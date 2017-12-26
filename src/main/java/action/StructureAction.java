package action;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.StructureDao;
import daoImp.StructureDaoImp;
import entity.UserStructureEntity;
import entity.CaseStructureEntity;
import entity.CommonStructureEntity;
import entity.StructureEntity;
import org.apache.struts2.components.If;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import util.Json;
import com.google.gson.Gson;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
public class StructureAction extends ActionSupport implements RequestAware, SessionAware, ModelDriven<StructureEntity>, Preparable {
    private StructureDao structureDao;
    private StructureEntity structure;
    private Map<String,Object> request;
    private Map<String,Object> session;
    private Map<String, Object> dataMap;
    private int id_template;
    private int page;


    public String get()
    {
        structureDao = new StructureDaoImp();
        List<StructureEntity> structureAll;
        Gson gson = new Gson();
        if(id_template==1){
            structureAll=structureDao.getAll(structure.getId_library(),(page-1)*6,(page-1)*6+6);
            int count=structureDao.count(structure.getId_library());
            int num=count/6+1;
            request.put("num",num);
            request.put("page",page);
            request.put("id_library",structure.getId_library());
            request.put("id_template",id_template);
            List csList=new LinkedList<>();
            for(int i=0;i<structureAll.size();i++)
            {   CommonStructureEntity cs = gson.fromJson(structureAll.get(i).getContent(), CommonStructureEntity.class);
                csList.add(cs);
            }
            ActionContext.getContext().getValueStack().set("list",csList);
        }
        else if(id_template==2) {
            structureAll=structureDao.getAll(structure.getId_library(),(page-1)*4,(page-1)*6+4);
            int count=structureDao.count(structure.getId_library());
            int num=count/6+1;
            request.put("num",num);
            request.put("page",page);
            List usList=new LinkedList<>();
            for(int i=0;i<structureAll.size();i++)
            {   UserStructureEntity cs = gson.fromJson(structureAll.get(i).getContent(), UserStructureEntity.class);
                usList.add(cs);
            }
            ActionContext.getContext().getValueStack().set("list",usList);
            request.put("id_library",structure.getId_library());
            request.put("id_template",id_template);
        }
        else if(id_template==3) {
            structureAll=structureDao.getAll(structure.getId_library(),(page-1)*4,(page-1)*6+4);
            int count=structureDao.count(structure.getId_library());
            int num=count/6+1;
            request.put("num",num);
            request.put("page",page);
            List casList=new LinkedList<>();
            for(int i=0;i<structureAll.size();i++)
            {   CaseStructureEntity cs = gson.fromJson(structureAll.get(i).getContent(), CaseStructureEntity.class);
                casList.add(cs);
            }
            ActionContext.getContext().getValueStack().set("list",casList);
            request.put("id_library",structure.getId_library());
            request.put("id_template",id_template);
        }

        return "get";
    }

    public String insert()
    {
        structureDao = new StructureDaoImp();
        structure.setContent("1234");
        Gson gson = new Gson();
        String jsonString = gson.toJson(structure);
        structureDao.insert(jsonString);
        return "insert";
    }
    @Override
    public StructureEntity getModel() {
        return structure;
    }

    @Override
    public void prepare() throws Exception {
        structure = new StructureEntity();
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

    public void setId_template(int id_template) {
        this.id_template = id_template;
    }
    public void setPage(int page) {
        this.page = page;
    }

}
