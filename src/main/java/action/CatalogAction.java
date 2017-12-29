package action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.CatalogDao;
import dao.TemplateDao;
import daoImp.CatalogDaoImp;
import daoImp.TemplateDaoImp;
import entity.CatalogEntity;
import entity.TemplateEntity;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by DELL on 2017/12/12.
 *
 * @author MJY
 */
public class CatalogAction extends ActionSupport implements RequestAware, SessionAware, ModelDriven<CatalogEntity>, Preparable {

    private Map<String,Object> request;
    private Map<String,Object> session;
    private Map<String, Object> dataMap;
    private int documentId;
    private CatalogEntity catalogEntity;
    private String catalogIndex;
    private int place;

    public String getIndex(){
        System.out.println(documentId);
        dataMap = new HashMap<String, Object>();
        CatalogDao catalogDao=new CatalogDaoImp();
        List<CatalogEntity> catalogEntityList=catalogDao.getAllIndex(documentId);
//        for (int i = 0; i < catalogEntityList.size(); i++) {
//            System.out.println(i+" "+catalogEntityList.get(i).getTitle()+" "+catalogEntityList.get(i).getFirst_index()+" "+catalogEntityList.get(i).getSecond_index()+" "+catalogEntityList.get(i).getThird_index()+" "+catalogEntityList.get(i).getFourth_index());
//        }
        dataMap.put("catalogList",catalogEntityList);
        return "Re";
    }

    public String jmpTemplate(){
        request.put("documentId",documentId);
        return "document";
    }
    public String addState1(){//下一级别，需要新增ul
        System.out.println(catalogEntity.getId_document()+" "+catalogEntity.getTitle()+" "+catalogEntity.getId_template()+" "+place+" "+catalogIndex);
        String[] tempList=catalogIndex.split(" ");
        dataMap=new HashMap<>();
        int first=Integer.valueOf(tempList[0]);
        int second=Integer.valueOf(tempList[1]);
        int third=Integer.valueOf(tempList[2]);
        int fourth=Integer.valueOf(tempList[3]);
        if(second==0&&third==0&&fourth==0)second++;
        else if(third==0&&fourth==0)third++;
        else if(fourth==0)fourth++;
        String spanText=first+" "+second+" "+third+" "+fourth;
        CatalogDao catalogDao=new CatalogDaoImp();
        catalogDao.insert(catalogEntity.getId_template(),catalogEntity.getId_document(),catalogEntity.getTitle(),first,second,third,fourth);
        dataMap.put("spanText",spanText);
        return "Re";
    }
    public String addState2(){//不需要新增，传最后一个元素的位置
        System.out.println(documentId+" "+catalogEntity.getTitle()+" "+catalogEntity.getId_template()+" "+place+" "+catalogIndex);
        String[] tempList=catalogIndex.split(" ");
        dataMap=new HashMap<>();
        int first=Integer.valueOf(tempList[0]);
        int second=Integer.valueOf(tempList[1]);
        int third=Integer.valueOf(tempList[2]);
        int fourth=Integer.valueOf(tempList[3]);
        if(second==0&&third==0&&fourth==0)first++;
        else if(third==0&&fourth==0)second++;
        else if(fourth==0)third++;
        else fourth++;
        String spanText=first+" "+second+" "+third+" "+fourth;
        CatalogDao catalogDao=new CatalogDaoImp();
        catalogDao.insert(catalogEntity.getId_template(),catalogEntity.getId_document(),catalogEntity.getTitle(),first,second,third,fourth);
        dataMap.put("spanText",spanText);
        return "Re";
    }
    public String delete(){
        System.out.println(documentId+" "+catalogIndex);
        String[] tempList=catalogIndex.split(" ");
        int first=Integer.valueOf(tempList[0]);
        int second=Integer.valueOf(tempList[1]);
        int third=Integer.valueOf(tempList[2]);
        int fourth=Integer.valueOf(tempList[3]);
        CatalogDao catalogDao=new CatalogDaoImp();
        if (second==0&&third==0&&fourth==0)catalogDao.update(documentId,first);
        else if(third==0&&fourth==0)catalogDao.update(documentId,first,second);
        else if(fourth==0)catalogDao.update(documentId,first,second,third);
        else catalogDao.update(documentId,first,second,third,fourth);
        return "Re";
    }

    public String up(){
        System.out.println(documentId+" "+catalogIndex);
        String[] tempList=catalogIndex.split(" ");
        int first=Integer.valueOf(tempList[0]);
        int second=Integer.valueOf(tempList[1]);
        int third=Integer.valueOf(tempList[2]);
        int fourth=Integer.valueOf(tempList[3]);
        CatalogDao catalogDao=new CatalogDaoImp();
        if (second==0&&third==0&&fourth==0)catalogDao.up(documentId,first);
        else if(third==0&&fourth==0)catalogDao.up(documentId,first,second);
        else if(fourth==0)catalogDao.up(documentId,first,second,third);
        else catalogDao.up(documentId,first,second,third,fourth);
        return "Re";
    }

    public String down(){
        System.out.println(documentId+" "+catalogIndex);
        String[] tempList=catalogIndex.split(" ");
        int first=Integer.valueOf(tempList[0]);
        int second=Integer.valueOf(tempList[1]);
        int third=Integer.valueOf(tempList[2]);
        int fourth=Integer.valueOf(tempList[3]);
        CatalogDao catalogDao=new CatalogDaoImp();
        if (second==0&&third==0&&fourth==0)catalogDao.down(documentId,first);
        else if(third==0&&fourth==0)catalogDao.down(documentId,first,second);
        else if(fourth==0)catalogDao.down(documentId,first,second,third);
        else catalogDao.down(documentId,first,second,third,fourth);
        return "Re";
    }
    public String  newCatalog(){
        CatalogDao catalogDao=new CatalogDaoImp();
        catalogDao.newCatalog(catalogEntity.getId_template(),catalogEntity.getTitle(),catalogEntity.getId_document());
        return "Re";
    }
    public String getCatalog(){
        String[] tempList=catalogIndex.split(" ");
        int first=Integer.valueOf(tempList[0]);
        int second=Integer.valueOf(tempList[1]);
        int third=Integer.valueOf(tempList[2]);
        int fourth=Integer.valueOf(tempList[3]);
        CatalogDao catalogDao=new CatalogDaoImp();
        CatalogEntity catalogEntity=catalogDao.getOne(documentId,first,second,third,fourth);
        TemplateDao templateDao=new TemplateDaoImp();
        TemplateEntity templateEntity=templateDao.getTemplate(catalogEntity.getId_template());
        dataMap=new HashMap<>();
        dataMap.put("template",templateEntity.getContent());
        dataMap.put("catalogEntity",catalogEntity);
        return "Re";
    }
    public void prepareNewCatalog(){
        catalogEntity=new CatalogEntity();
    }

    public void prepareAddState1(){
        catalogEntity=new CatalogEntity();
    }

    public void prepareAddState2(){
        catalogEntity=new CatalogEntity();
    }

    @Override
    public CatalogEntity getModel() {
        return catalogEntity;
    }

    @Override
    public void prepare() throws Exception {
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

    public void setDocumentId(int documentId) {
        this.documentId = documentId;
    }

    public void setPlace(int place) {
        this.place = place;
    }

    public void setCatalogIndex(String catalogIndex) {
        this.catalogIndex = catalogIndex;
    }
}
