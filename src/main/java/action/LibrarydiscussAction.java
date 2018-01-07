package action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.LibrarydiscussDao;
import daoImp.LibrarydiscussDaoImp;
import entity.LibrarydiscussEntity;
import entity.LibrarydiscussEntity;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.components.If;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

public class LibrarydiscussAction extends ActionSupport implements RequestAware, SessionAware, ModelDriven<LibrarydiscussEntity>, Preparable {
    private LibrarydiscussDao librarydiscussDao;
    private LibrarydiscussEntity librarydiscuss;
    private Map<String,Object> request;
    private Map<String,Object> session;
    private Map<String, Object> dataMap;
    private File file;
    private String fileFileName;

    public void setFileFileName(String fileFileName) {
        this.fileFileName = fileFileName;
    }

    public void setFile(File file) {
        this.file = file;
    }

    public String commit() {
        dataMap = new HashMap<String, Object>();
        librarydiscussDao = new LibrarydiscussDaoImp();
        Date a=new Date();
        boolean res=librarydiscussDao.insert(librarydiscuss.getId_user(),librarydiscuss.getId_library(),a,librarydiscuss.getContent());
        dataMap.put("res", res);
        return "RES";
    }

    public String delete()
    {
        dataMap = new HashMap<String, Object>();
        librarydiscussDao = new LibrarydiscussDaoImp();
        boolean res=librarydiscussDao.delete(librarydiscuss.getId_lib_discuss());
        dataMap.put("res", res);
        return "RES";
    }

    public String image()
    {
        System.out.println(1111112246);
        dataMap = new HashMap<String, Object>();
        if (file!=null) {
            String savePath = ServletActionContext.getServletContext().getRealPath("disImage");

            SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd");
            String ymd=sdf.format(new Date());
            savePath+="/"+ymd+"/";
            File dirFile=new File(savePath);
            if(!dirFile.exists()){
                dirFile.mkdir();
            }
                String fileExt=fileFileName.substring(fileFileName.lastIndexOf(".")+1).trim().toLowerCase();
                SimpleDateFormat sdfForFileName=new SimpleDateFormat("yyyyMMddHHmmss");
                String newName=sdfForFileName.format(new Date())+"_"+new Random().nextInt(1000)+"."+fileExt;
                File destFile=new File(dirFile,newName);

                try {
                    System.out.println("Src File name: " + file);
                    System.out.println("Dst File name: " + fileFileName);
//                    File destFile = new File(savePath, MyFileFileName.get(i));
                    FileUtils.copyFile(file, destFile);

                } catch (IOException e) {
                    e.printStackTrace();
                }
                String path="/aaa"+"/"+"disImage/"+ymd+"/"+newName;
                dataMap.put("path",path);
            System.out.println(path);
        }
        return "RES";
    }


    @Override
    public LibrarydiscussEntity getModel() {
        return librarydiscuss;
    }

    @Override
    public void prepare() throws Exception {
        librarydiscuss = new LibrarydiscussEntity();
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    @Override
    public void setRequest(Map<String, Object> request) {
        this.request = request;
    }

    public Map<String, Object> getDataMap() {
        return dataMap;
    }

    public void setDataMap(Map<String, Object> dataMap) {
        this.dataMap = dataMap;
    }
}
