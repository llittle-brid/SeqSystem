package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.StructureDao;
import daoImp.StructureDaoImp;
import entity.StructureEntity;
import org.apache.struts2.components.If;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import util.Json;
import com.google.gson.Gson;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
public class StructureAction extends ActionSupport implements RequestAware, SessionAware, ModelDriven<StructureEntity>, Preparable {
    private StructureDao structureDao;
    private StructureEntity structure;
    private Map<String,Object> request;
    private Map<String,Object> session;
    private Map<String, Object> dataMap;

    private Json json;
    private int id_library;

    public String get()
    {
        structureDao = new StructureDaoImp();
        List<StructureEntity> structureAll;
        structureAll=structureDao.getAll(id_library);
        ActionContext.getContext().getValueStack().set("list",structureAll);
        return "get";
    }

    public String insert()
    {
        structureDao = new StructureDaoImp();
        structure.setContent("123");
        System.out.println(json.toJoson(structure));
        structureDao.insert(json.toJoson(structure));
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

    public void setId_library(int id_library) {
        this.id_library = id_library;
    }


    public Json getJson() {
        return json;
    }

    public void setJson(Json json) {
        this.json = json;
    }

    public StructureAction(Json json) {
        this.json = json;
    }
}
