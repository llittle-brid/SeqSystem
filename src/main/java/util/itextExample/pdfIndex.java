package util.itextExample;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.itextpdf.text.Chapter;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.Section;
import com.itextpdf.text.pdf.ColumnText;
import com.itextpdf.text.pdf.PdfPageEventHelper;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.draw.DottedLineSeparator;

/**
 * @author 	youxingyang
 * @Date	2017-5-8 上午9:19:30
 */
public class pdfIndex {
 
    /**
     * EventListner for Content
     */
    private static class ContentEvent extends PdfPageEventHelper {
    
        private int page;
        Map<String, Integer> index = new LinkedHashMap<String, Integer>();
 
        @Override
        public void onStartPage (PdfWriter writer, Document document) {
            page++;
        }
 
        @Override
        public void onChapter (PdfWriter writer, Document document, float paragraphPosition, Paragraph title) {
            index.put(title.getContent(), page);
        }
 
        @Override
        public void onSection (PdfWriter writer, Document document, float paragraphPosition, int depth, Paragraph title) {
            onChapter(writer, document, paragraphPosition, title);
        }
    }
 
    /**
     * EventListner for Index
     */
    private static class IndexEvent extends PdfPageEventHelper {
    
        private int page;
        private boolean body;
        @Override
        public void onEndPage (PdfWriter writer, Document document) {
            // set page number on content
            if (body) {
                page++;
                ColumnText.showTextAligned(writer.getDirectContent(), Element.ALIGN_CENTER, new Phrase(page + ""),
                        (document.right() + document.left()) / 2, document.bottom() - 18, 0);
            }
        }
    }
 
    public static void main(String[] args) throws Exception {
    
        // make content pdf (calculate page number)
        Document content = new Document(PageSize.A4, 48, 48, 60, 65);
        PdfWriter contentWriter = PdfWriter.getInstance(content, new ByteArrayOutputStream());
        //设置事件
        ContentEvent event = new ContentEvent();
        contentWriter.setPageEvent(event);
        content.open();
        List<Chapter> chapterList = new ArrayList<Chapter>();
        
        for (int i = 1; i <= 10; i++) {
            Chunk chapTitle = new Chunk("The "+ i + " chapter");
            Chapter chapter = new Chapter(new Paragraph(chapTitle), i);
            chapTitle.setLocalDestination(chapter.getTitle().getContent());
            for (int j = 0; j < 2; j++) {
                Chunk secTitle = new Chunk("The " + (j + 1) + " section");
                Section section = chapter.addSection(new Paragraph(secTitle));
                secTitle.setLocalDestination(section.getTitle().getContent());
                section.setIndentationLeft(10);  
                section.add(new Paragraph("hello, world\nhello, world\nhello, world\n"));
            
	            for (int k = 0; k < 3; k++) {
	            	Chunk subSecTitle = new Chunk("The " + (k + 1) + " subSection");
	                Section subSection = section.addSection(new Paragraph(subSecTitle));
	                subSecTitle.setLocalDestination(subSection.getTitle().getContent());
	                subSection.setIndentationLeft(10);  
	                subSection.add(new Paragraph("subhello, world\nsubhello, world\nsubhello, world\n"));
	            }
            }
            
            content.add(chapter);
            chapterList.add(chapter); //保存章节内容
            
        }
        content.close();
 
        Document document = new Document(PageSize.A4, 48, 48, 60, 65);
        // add index page.
        String path = "test.pdf";
        String dir = "C:/Users/Administrator/Desktop/ItextTest/index.pdf";
        File file = new File(dir);
        if (!file.exists()) {
        	file.mkdir();
        }
        path = dir + File.separator + path;
        FileOutputStream os = new FileOutputStream(path);
        PdfWriter writer = PdfWriter.getInstance(document, os);
        IndexEvent indexEvent = new IndexEvent();
        writer.setPageEvent(indexEvent);
        document.open();
        
        //添加章节目录
        Chapter indexChapter = new Chapter("Index：", 1);
        indexChapter.setNumberDepth(-1);// not show number style
        for (Map.Entry<String, Integer> index : event.index.entrySet()) {
        	String key = index.getKey();
        	String keyValue = key;
        	if (countInString(key, ".") == 2) { //小标题缩进判断, 如有三级标题自己添加判断
        		keyValue = "    " + key;
        	} else if (countInString(key, ".") == 3) {
        		keyValue = "    " + "    " + key;
        	}
        	
        	Paragraph paragraph = new Paragraph(keyValue);
        	
        	Chunk chunk0101 = new Chunk(new DottedLineSeparator());
        	
        	Chunk pageno = new Chunk(index.getValue() + "");
        	pageno.setLocalGoto(index.getKey());
        	
        	Chunk chunk0102 = new Chunk(pageno);

        	paragraph.add(chunk0101);
        	paragraph.add(chunk0102);
        	
        	indexChapter.add(paragraph);
        }
        
        document.add(indexChapter);
        
        // add content chapter
        for (Chapter c : chapterList) {
            document.add(c);
            indexEvent.body = true;
        }
        
        document.close();
        os.close();
    }
 
    public static int countInString(String str1, String str2) {
		int total = 0;
		for (String tmp = str1; tmp != null && tmp.length() >= str2.length();){
		  if(tmp.indexOf(str2) == 0){
		    total++;
		    tmp = tmp.substring(str2.length());
		  }else{
		    tmp = tmp.substring(1);
		  }
		}
		return total;
	}
    
}
