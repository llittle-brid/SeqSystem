package action;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.*;
import daoImp.CatalogDaoImp;
import daoImp.DocumentDaoImp;
import daoImp.TemplateDaoImp;
import daoImp.UsableDaoImp;
import entity.*;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import java.lang.reflect.Type;
import java.util.ArrayList;
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
    private String title;
    private String content;
    private int  id_catalog;
    private String describe;
    private String permissions;
    private  int projectId;
    private int state;
    private int rank;
    //3
    private String funName;
    private int priority;
    private String inDiv;
    private String outDiv;
    private String basic;
    private String alternative;
    private String funRoleList;
    private String funUsableList;

    public String getIndex(){
        dataMap = new HashMap<String, Object>();
        CatalogDao catalogDao=new CatalogDaoImp();
        List<CatalogEntity> catalogEntityList=catalogDao.getAllIndex(documentId);
        dataMap.put("catalogList",catalogEntityList);
        return "Re";
    }

    public String jmpTemplate(){
        if (state==1){//过期
        request.put("documentId",documentId);
        request.put("projectId",projectId);
        }
        else {
            DocumentDao documentDao=new DocumentDaoImp();
            int id_document=documentDao.getDocumentId(projectId);
            request.put("documentId",id_document);
        }
        request.put("state",state);
        request.put("rank",rank);
        return "document";
    }
    public String addState1(){//下一级别，需要新增ul
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
    public String getCatalog() {
        String[] tempList = catalogIndex.split(" ");
        int first = Integer.valueOf(tempList[0]);
        int second = Integer.valueOf(tempList[1]);
        int third = Integer.valueOf(tempList[2]);
        int fourth = Integer.valueOf(tempList[3]);
        CatalogDao catalogDao = new CatalogDaoImp();
        CatalogEntity catalogEntity = catalogDao.getOne(documentId, first, second, third, fourth);
        TemplateDao templateDao = new TemplateDaoImp();
        TemplateEntity templateEntity = templateDao.getTemplate(catalogEntity.getId_template());
        Gson gson = new Gson();
        dataMap = new HashMap<>();
        if (catalogEntity.getId_template() == 1) {//通用
            CommonStructureEntity entity = gson.fromJson(catalogEntity.getContent(), CommonStructureEntity.class);
            dataMap.put("entity", entity);
        } else if (catalogEntity.getId_template() == 2) {
            UserStructureEntity entity = gson.fromJson(catalogEntity.getContent(), UserStructureEntity.class);
            dataMap.put("entity", entity);
        } else if (catalogEntity.getId_template() == 3) {
            //获取角色列表
            List<CatalogEntity> catalogEntityList = catalogDao.getAllRole(documentId);
            List<UserStructureEntity> roleList = new ArrayList<>();
            for (int i = 0; i < catalogEntityList.size(); i++) {
                UserStructureEntity userStructureEntity=gson.fromJson(catalogEntityList.get(i).getContent(), UserStructureEntity.class);
                if(userStructureEntity.getRoleName()!=null)
                roleList.add(userStructureEntity);  }
                //获取当前catalog内容
                FunStructureEntity entity = gson.fromJson(catalogEntity.getContent(), FunStructureEntity.class);
            //这个是内容类
                dataMap.put("entity", entity);
                dataMap.put("roleList", roleList);
        }
            dataMap.put("template", templateEntity);
            //这个包括目录
            dataMap.put("catalogEntity", catalogEntity);
         return "Re";
    }


    public String rename(){
        String[] tempList=catalogIndex.split(" ");
        int first=Integer.valueOf(tempList[0]);
        int second=Integer.valueOf(tempList[1]);
        int third=Integer.valueOf(tempList[2]);
        int fourth=Integer.valueOf(tempList[3]);
        CatalogDao catalogDao=new CatalogDaoImp();
        catalogDao.rename(title,documentId,first,second,third,fourth);
        return "Re";
    }
    public  String getRoleCount(){
        CatalogDao catalogDao=new CatalogDaoImp();
        dataMap=new HashMap<>();
        dataMap.put("roleCount",catalogDao.getRoleCount(documentId));
        return "Re";
    }
    public String saveTemplateOne(){
        CatalogDao catalogDao=new CatalogDaoImp();
        CommonStructureEntity structureEntity=new CommonStructureEntity(content);
        Gson gson = new Gson();
        catalogDao.saveContent(id_catalog,gson.toJson(structureEntity));
        return "Re";
    }

    public  String saveTemplateTwo(){
        CatalogDao catalogDao=new CatalogDaoImp();
        UserStructureEntity structureEntity=new UserStructureEntity(content,describe,permissions);
        Gson gson = new Gson();
        catalogDao.saveContent(id_catalog,gson.toJson(structureEntity));
        return "Re";
    }
    public String saveTemplateThree(){
        Gson gson=new Gson();
        CatalogDao catalogDao=new CatalogDaoImp();
        Type type = new TypeToken<ArrayList<FunUsable>>() {}.getType();
        List<FunUsable> funUsables;
//        System.out.println(funUsableList);
        funUsables=gson.fromJson(funUsableList,type);
//        System.out.println(funUsables);
        type= new TypeToken<ArrayList<FunRole>>() {}.getType();
        List<FunRole> funRoles;
        System.out.println(funRoleList);
        funRoles=gson.fromJson(funRoleList,type);
        System.out.println(funRoles);
        FunStructureEntity funStructureEntity=new FunStructureEntity(funName,priority,content,funRoles,funUsables,inDiv,outDiv,basic,alternative);
        catalogDao.saveContent(id_catalog,gson.toJson(funStructureEntity));
        return "Re";
    }

    public String getUsable(){
        UsableDao usableDao=new UsableDaoImp();
        List<UsableEntity> usableEntityList=usableDao.getUsable();
        dataMap=new HashMap<>();
        dataMap.put("usableList",usableEntityList);
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

    public void setTitle(String title) {
        this.title = title;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setId_catalog(int id_catalog) {
        this.id_catalog = id_catalog;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public void setPermissions(String permissions) {
        this.permissions = permissions;
    }

    public void setFunName(String funName) {
        this.funName = funName;
    }


    public void setInDiv(String inDiv) {
        this.inDiv = inDiv;
    }

    public void setOutDiv(String outDiv) {
        this.outDiv = outDiv;
    }

    public void setBasic(String basic) {
        this.basic = basic;
    }

    public void setAlternative(String alternative) {
        this.alternative = alternative;
    }

    public void setFunRoleList(String funRoleList) {
        this.funRoleList = funRoleList;
    }

    public void setFunUsableList(String funUsableList) {
        this.funUsableList = funUsableList;
    }

    public void setPriority(int priority) {
        this.priority = priority;
    }

    public void setProjectId(int projectId) {
        this.projectId = projectId;
    }

    public void setState(int state) {
        this.state = state;
    }

    public void setRank(int rank) {
        this.rank = rank;
    }
}
