package action;

import com.opensymphony.xwork2.ActionContext;
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
import entity.UserEntity;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.StrutsStatics;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import javax.servlet.http.HttpServletRequest;
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
    private AccessoryDao accessoryDao;
    private ProDiscussEntity proDiscussEntity;
    private int page;
    private int projectId;

    public void setPage(int page) {
        this.page = page;
    }

    public String commit(){
        catalogDao=new CatalogDaoImp();
        proDiscussDao=new ProDiscussDaoImp();
        String[] tempList=catalogIndex.split(" ");
        UserEntity seesionUser=(UserEntity)session.get("user");
        int first=Integer.valueOf(tempList[0]);
        int second=Integer.valueOf(tempList[1]);
        int third=Integer.valueOf(tempList[2]);
        int fourth=Integer.valueOf(tempList[3]);
        int id_catalog=catalogDao.getIdCatalog(id_document,first,second,third,fourth);
        proDiscussDao.commit(seesionUser.getId_user(),id_catalog,new Timestamp(new Date().getTime()),disContent);
        return "Re";
    }

    public String commit2Project(){
        int id_project = proDiscussEntity.getId_Project();
        int id_user = ((UserEntity)ActionContext.getContext().getSession().get("user")).getId_user();
        List<File> MyFile = proDiscussEntity.getMyFile();
        List<String> MyFileFileName = proDiscussEntity.getMyFileFileName();

        List<String> Path = new LinkedList<>();

        if (MyFile!=null) {
            HttpServletRequest request2 = (HttpServletRequest) ActionContext.getContext().get(StrutsStatics.HTTP_REQUEST);
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
                    FileUtils.copyFile(MyFile.get(i), destFile);

                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        proDiscussDao = new ProDiscussDaoImp();
        if (id_project!=0)
        proDiscussDao.commit(id_user,id_project,new Timestamp(new Date().getTime()),disContent,MyFileFileName,Path);
        else
            proDiscussDao.commitToCatalog(((UserEntity)session.get("user")).getId_user(),proDiscussEntity.getId_catalog(),new Timestamp(new Date().getTime()),disContent,MyFileFileName,Path);
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
        List<ProDIscussWrapper> wrapperList=ProDIscussWrapper.getWrapperList(discussList,((UserEntity)(ActionContext.getContext().getSession().get("user"))).getId_user(),projectId);
        dataMap.put("wrapperList",wrapperList);
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
        dataMap.put("disNum",disNum);
        dataMap.put("disPage",disPage);
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

    public void setProjectId(int projectId) {
        this.projectId = projectId;
    }
}
