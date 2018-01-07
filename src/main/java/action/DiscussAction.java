package action;


import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.AccessoryDao;
import dao.CatalogDao;
import dao.ProDiscussDao;
import daoImp.AccessoryDaoImp;
import daoImp.CatalogDaoImp;
import daoImp.ProDiscussDaoImp;
import entity.AccessoryEntity;
import entity.ProDIscussWrapper;
import entity.ProDiscussEntity;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    private AccessoryDao accessoryDao;
    private ProDiscussEntity proDiscussEntity;
    private int page;

    public void setPage(int page) {
        this.page = page;
    }

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

        /* Copy file to a safe location */
        String DestPath = "/Users/zhiweixu/Documents/GitHub/SeqSystem/src/main/webapp/accessories";
        if (MyFile!=null) {
            for (int i = 0; i < MyFile.size(); i++) {
                try {
                    System.out.println("Src File name: " + MyFile.get(i));
                    System.out.println("Dst File name: " + MyFileFileName.get(i));
                    File destFile = new File(DestPath, MyFileFileName.get(i));
                    FileUtils.copyFile(MyFile.get(i), destFile);


                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        proDiscussDao = new ProDiscussDaoImp();
        proDiscussDao.commit1(id_user,id_project,new Timestamp(new java.util.Date().getTime()),disContent,MyFileFileName);
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
        List<ProDiscussEntity> discussList = proDiscussDao.getProjectDis(id_project,page*3);
        List<ProDIscussWrapper> wrapperList = ProDIscussWrapper.getWrapperList(discussList,id_user,id_project);

        proDiscussDao = new ProDiscussDaoImp();
        int disNum = proDiscussDao.getProDisNum(id_project);

        int disPage=0;

        if (disNum%3==0)
            disPage = disNum/3;
        else
            disPage = disNum/3 + 1;
        session.put("disNum",disNum);
        session.put("disPage",disPage);
        dataMap.put("wrapperList",wrapperList);
        return "Re";
    }

    public String delete(){

        proDiscussDao=new ProDiscussDaoImp();
        accessoryDao = new AccessoryDaoImp();
        int id_pro_discuss = proDiscussEntity.getId_pro_discuss();

        List<AccessoryEntity> accessoryEntityList = accessoryDao.getAll(id_pro_discuss);
        if (accessoryEntityList.size()>0) {
            String savePath = ServletActionContext.getServletContext().getRealPath("accessories");
            for (int i = 0; i < accessoryEntityList.size(); i++) {
                savePath += accessoryEntityList.get(i).getPath();
                File file = new File(savePath);
                file.delete();
            }
        }
        proDiscussDao.delete(id_pro_discuss);
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
