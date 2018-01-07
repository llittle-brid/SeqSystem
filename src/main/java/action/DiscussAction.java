package action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.CatalogDao;
import dao.ProDiscussDao;
import daoImp.CatalogDaoImp;
import daoImp.ProDiscussDaoImp;
import entity.ProDIscussWrapper;
import entity.ProDiscussEntity;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;

import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by DELL on 2017/12/25.
 *
 * @author MJY
 */
public class DiscussAction extends ActionSupport implements RequestAware, SessionAware, ModelDriven<ProDiscussEntity>, Preparable {

    private Map<String,Object> request;
    private Map<String,Object> session;
    private Map<String, Object> dataMap;
    private String disContent;
    private String catalogIndex;
    private int id_document;
    private CatalogDao catalogDao;
    private ProDiscussDao proDiscussDao;
    private ProDiscussEntity proDiscussEntity;

    public String commit(){
        catalogDao=new CatalogDaoImp();
        proDiscussDao=new ProDiscussDaoImp();
        String[] tempList=catalogIndex.split(" ");
        int first=Integer.valueOf(tempList[0]);
        int second=Integer.valueOf(tempList[1]);
        int third=Integer.valueOf(tempList[2]);
        int fourth=Integer.valueOf(tempList[3]);
        int id_catalog=catalogDao.getIdCatalog(id_document,first,second,third,fourth);
        proDiscussDao.commit(1,id_catalog,new Timestamp(new java.util.Date().getTime()),disContent);
        return "Re";
    }

    public String commit2Project(){
        int id_project = proDiscussEntity.getId_Project();
        int id_user = proDiscussEntity.getId_user();
        List<File> MyFile = proDiscussEntity.getMyFile();
        List<String> MyFileFileName = proDiscussEntity.getMyFileFileName();

        List<String> Path = new LinkedList<>();

        if (MyFile!=null) {
            String savePath = ServletActionContext.getServletContext().getRealPath("accessories");

            SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd");
            String ymd=sdf.format(new Date());
            savePath+="/"+ymd+"/";
            File dirFile=new File(savePath);
            if(!dirFile.exists()){
                dirFile.mkdir();
            }
            for (int i = 0; i < MyFile.size(); i++) {
                String fileExt=MyFileFileName.get(i).substring(MyFileFileName.get(i).lastIndexOf(".")+1).trim().toLowerCase();
                SimpleDateFormat sdfForFileName=new SimpleDateFormat("yyyyMMddHHmmss");
                String newName=sdfForFileName.format(new Date())+"_"+new Random().nextInt(1000)+"."+fileExt;
                File destFile=new File(dirFile,newName);
                Path.add("/"+ymd+"/"+newName);
                try {
                    System.out.println("Src File name: " + MyFile.get(i));
                    System.out.println("Dst File name: " + MyFileFileName.get(i));
//                    File destFile = new File(savePath, MyFileFileName.get(i));
                    FileUtils.copyFile(MyFile.get(i), destFile);

                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        proDiscussDao = new ProDiscussDaoImp();
        proDiscussDao.commit1(id_user,id_project,new Timestamp(new java.util.Date().getTime()),disContent,MyFileFileName,Path);
        return "Re";
    }

    public String getCatalogDis(){
        catalogDao=new CatalogDaoImp();
        proDiscussDao=new ProDiscussDaoImp();
        dataMap=new HashMap<>();
        String[] tempList=catalogIndex.split(" ");
        int first=Integer.valueOf(tempList[0]);
        int second=Integer.valueOf(tempList[1]);
        int third=Integer.valueOf(tempList[2]);
        int fourth=Integer.valueOf(tempList[3]);
        int id_catalog=catalogDao.getIdCatalog(id_document,first,second,third,fourth);
        List<ProDiscussEntity> discussList=proDiscussDao.getCatalogDis(id_catalog);
        List<ProDIscussWrapper> wrapperList=ProDIscussWrapper.getWrapperList(discussList,1,1);
        dataMap.put("wrapperList",wrapperList);
        dataMap.put("test",1);
        return "Re";
    }

    public String getProjectDis(){
        int id_project = proDiscussEntity.getId_Project();
        int id_user = proDiscussEntity.getId_user();
        proDiscussDao=new ProDiscussDaoImp();
        dataMap=new HashMap<>();
        List<ProDiscussEntity> discussList = proDiscussDao.getProjectDis(id_project);
        List<ProDIscussWrapper> wrapperList = ProDIscussWrapper.getWrapperList(discussList,id_user,id_project);
        dataMap.put("wrapperList",wrapperList);
        return "Re";
    }

    public String delete(){

        proDiscussDao=new ProDiscussDaoImp();
        proDiscussDao.delete(proDiscussEntity.getId_pro_discuss());
        return "Re";
    }


    public String fileDelete(){
        dataMap=new HashMap<>();
        String fileName=request.get("filename").toString();

        System.out.println("delete filename:"+fileName);
        String path="/Users/zhiweixu/Documents/GitHub/SeqSystem/src/main/webapp/accessories";
        boolean flag=true;
        try{
            File file=new File(path);
            File[] f=file.listFiles();
            for(int i=0;i<f.length;i++){
                if(f[i].getName().equals(fileName)){
                    //删除文件
                    f[i].delete();
                }
            }
        }catch(Exception e){
            e.printStackTrace();
            flag=false;
        }

        dataMap.put("res",flag);
        return "Re";
    }

    @Override
    public ProDiscussEntity getModel() {
        return proDiscussEntity;
    }

    @Override
    public void prepare() throws Exception {
        proDiscussEntity=new ProDiscussEntity();
    }


    public Map<String, Object> getDataMap() {
        return dataMap;
    }

    public void setDataMap(Map<String, Object> dataMap) {
        this.dataMap = dataMap;
    }

    public void setDisContent(String disContent) {
        this.disContent = disContent;
    }

    public void setCatalogIndex(String catalogIndex) {
        this.catalogIndex = catalogIndex;
    }

    public void setId_document(int id_document) {
        this.id_document = id_document;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    @Override
    public void setRequest(Map<String, Object> request) {
        this.request = request;
    }
}
