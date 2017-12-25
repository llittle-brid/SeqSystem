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
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import java.sql.Timestamp;
import java.util.ArrayList;
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
        List<ProDIscussWrapper> wrapperList=ProDIscussWrapper.getWrapperList(discussList,1);
        dataMap.put("wrapperList",wrapperList);
        dataMap.put("test",1);
        return "Re";
    }

    @Override
    public ProDiscussEntity getModel() {
        return null;
    }

    @Override
    public void prepare() throws Exception {

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
