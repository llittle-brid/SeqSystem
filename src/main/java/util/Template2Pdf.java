package util;

/**
 * Created by ${mjy} on 2018/4/17.
 */

import com.google.gson.Gson;
import com.itextpdf.text.*;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.tool.xml.XMLWorker;
import com.itextpdf.tool.xml.XMLWorkerFontProvider;
import com.itextpdf.tool.xml.XMLWorkerHelper;
import com.itextpdf.tool.xml.html.Tags;
import com.itextpdf.tool.xml.parser.XMLParser;
import com.itextpdf.tool.xml.pipeline.css.CSSResolver;
import com.itextpdf.tool.xml.pipeline.css.CssResolverPipeline;
import com.itextpdf.tool.xml.pipeline.end.PdfWriterPipeline;
import com.itextpdf.tool.xml.pipeline.html.HtmlPipeline;
import com.itextpdf.tool.xml.pipeline.html.HtmlPipelineContext;
import dao.CatalogDao;
import daoImp.CatalogDaoImp;
import entity.*;

import java.io.*;
import java.nio.charset.Charset;
import java.util.List;

public class Template2Pdf {




    private static final Paragraph BLANK = new Paragraph(" ");
    BaseFont bfChinese = BaseFont.createFont("STSong-Light", "UniGB-UCS2-H", BaseFont.NOT_EMBEDDED);
    Font title = new Font(bfChinese, 24, Font.NORMAL, BaseColor.BLACK);
    Font catalog = new Font(bfChinese, 16, Font.BOLD, BaseColor.BLACK);
    Font black = new Font(bfChinese, 12, Font.BOLD, BaseColor.BLACK);

    public Template2Pdf() throws IOException, DocumentException {
    }


    public class pdfFont extends XMLWorkerFontProvider {
        public pdfFont() {
            super(null, null);
        }

        @Override
        public Font getFont(String fontname, String encoding, float size, int style) {
            Font FontChinese = null;
            FontChinese = new Font(bfChinese, 12, Font.NORMAL);
            if (FontChinese == null) {
                FontChinese = super.getFont(fontname, encoding, size, style);
            }
            return FontChinese;
        }
    }

    private void add2Document(Document document, String line, PdfWriter writer) throws DocumentException, IOException {
        Font cfont = new Font(bfChinese);
        line = line.replaceAll("png\">", "png\" />");
        line = line.replaceAll("<br>", "<br />");
        line = line.replaceAll("<hr>", "<hr />");
        line = line.replaceAll("src=\"", "src=\"http://112.74.48.57");
        line = "<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; " + line + "</div>";
        XMLWorkerHelper.getInstance().parseXHtml(writer, document,
                new ByteArrayInputStream(line.getBytes("UTF-8")),
                null,
                Charset.forName("UTF-8"), new pdfFont());


    }


    public InputStream createPdf(int id_document) throws IOException, DocumentException {
        Gson gson = new Gson();
        Document document = new Document();
        BaseFont bfChinese = BaseFont.createFont("STSong-Light", "UniGB-UCS2-H", BaseFont.NOT_EMBEDDED);
        Font cfont = new Font(bfChinese);
        ByteArrayOutputStream buffer = new ByteArrayOutputStream();
        CatalogDao catalogDao = new CatalogDaoImp();
        PdfWriter writer = PdfWriter.getInstance(document, buffer);
        document.open();


        // CSS
        CSSResolver cssResolver =
                XMLWorkerHelper.getInstance().getDefaultCssResolver(true);

        // HTML
        HtmlPipelineContext htmlContext = new HtmlPipelineContext(null);
        htmlContext.setTagFactory(Tags.getHtmlTagProcessorFactory());
//        htmlContext.setImageProvider(new Base64ImageProvider());

        // Pipelines
        PdfWriterPipeline pdf = new PdfWriterPipeline(document, writer);
        HtmlPipeline html = new HtmlPipeline(htmlContext, pdf);
        CssResolverPipeline css = new CssResolverPipeline(cssResolver, html);

        // XML Worker
        XMLWorker worker = new XMLWorker(css, true);
        XMLParser p2 = new XMLParser(worker);


        //文章标题

        Paragraph headline = new Paragraph(catalogDao.getCatalogName(id_document), title);
        headline.setAlignment(Element.ALIGN_CENTER);
        document.add(headline);


        java.util.List<CatalogEntity> catalogEntityList = catalogDao.getAll(id_document);
        String line;
        Paragraph lineParagraph = new Paragraph();
        boolean isFirstIndex = false;
        //逐级生成内容
        for (CatalogEntity e : catalogEntityList) {
            document.add(BLANK);
            line = e.getTitle() + "  ";
            if (e.getFourth_index() != 0)//第四级目录
                line = e.getFirst_index() + "." + e.getSecond_index() + "." + e.getThird_index() + "." + e.getFourth_index() + "  " + line;
            else if (e.getThird_index() != 0)//第三级目录
                line = e.getFirst_index() + "." + e.getSecond_index() + "." + e.getThird_index() + "  " + line;
            else if (e.getSecond_index() != 0)//第二级目录
                line = e.getFirst_index() + "." + e.getSecond_index() + "  " + line;
            else //第一级目录
            {
                line = "第"+e.getFirst_index() + "章  " + line;
                //一级标题居中
                isFirstIndex = true;
            }
            lineParagraph = new Paragraph(line, catalog);
            if (isFirstIndex == false)//2 3 4级目录靠左
                lineParagraph.setAlignment(Element.ALIGN_LEFT);
            else   lineParagraph.setAlignment(Element.ALIGN_CENTER);
            isFirstIndex=false;
            document.add(lineParagraph);
            if (e.getContent() != null) {//生成不同类型的文本内容
                if (e.getId_template() == 1) {//模板类型1
                    CommonStructureEntity entity = gson.fromJson(e.getContent(), CommonStructureEntity.class);


                    add2Document(document, entity.getContent(), writer);
                }
                if (e.getId_template() == 2) {//模板类型2
                    UserStructureEntity entity = gson.fromJson(e.getContent(), UserStructureEntity.class);
                    document.add(new Paragraph("用户名:" + entity.getRoleName(), black));
                    document.add(new Paragraph("用户描述", black));
                    add2Document(document, entity.getDescribe(), writer);
                    document.add(new Paragraph("用户权限", black));
                    add2Document(document, entity.getPermissions(), writer);
                }
                if (e.getId_template() == 3) {//模板类型3
                    FunStructureEntity entity = gson.fromJson(e.getContent(), FunStructureEntity.class);
                    String priorityName;
                    document.add(new Paragraph("功能点名称:" + entity.getFunName(), black));
                    if (entity.getPriority() == 1) priorityName = "高";
                    else if (entity.getPriority() == 2) priorityName = "中";
                    else priorityName = "低";
                    document.add(new Paragraph("优先级: " + priorityName, black));
                    document.add(new Paragraph("功能点描述: ", black));
                    add2Document(document, entity.getDescribe(), writer);
                    document.add(new Paragraph("用例过程: ", black));
                    List<FunRole> funRoleList = entity.getFunRoleList();
                    for (int i = 0; i < funRoleList.size(); i++) {
                        FunRole funRole = funRoleList.get(i);
                        document.add(new Paragraph("用例过程" + (i + 1), cfont));
                        if (funRole.getRoleName() != null)
                            document.add(new Paragraph("参与角色:  " + funRole.getRoleName(), black));
                        if (funRole.getRoleDescribe() != null)
                            document.add(new Paragraph("用例描述:  " + funRole.getRoleDescribe(), black));
                        document.add(new Paragraph(funRole.getUsableName(), black));
                        document.add(new Paragraph(funRole.getUsablePara(), black));
                        document.add(BLANK);
                    }
                    List<FunUsable> funUsableList = entity.getFunUsableList();
                    if (funUsableList.size() != 0) {
                        document.add(new Paragraph("全局可用性: ", black));
                        for (int j = 0; j < funUsableList.size(); j++) {
                            FunUsable funUsable = funUsableList.get(j);
                            document.add(new Paragraph("全局可用性" + (j + 1), black));
                            document.add(new Paragraph("全局可用性名称:  " + funUsable.getUsableName(), black));
                            document.add(new Paragraph("发生条件:  " + funUsable.getUsablePara(), black));
                            document.add(BLANK);
                        }
                    }
                    document.add(new Paragraph("输入: ", black));
                    add2Document(document, entity.getInput(), writer);
                    document.add(new Paragraph("输出: ", black));
                    add2Document(document, entity.getOutput(), writer);
                    document.add(new Paragraph("基本操作流程: ", black));
                    add2Document(document, entity.getBasic(), writer);
                    document.add(new Paragraph("备选操作流程: ", black));
                    add2Document(document, entity.getAlternative(), writer);
                }
            }
        }

        document.close();
        InputStream inputStream = new ByteArrayInputStream(buffer.toByteArray());

        return inputStream;
    }
}
