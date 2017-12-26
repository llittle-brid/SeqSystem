package action;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.StructureDao;
import daoImp.StructureDaoImp;
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

    public String get()
    {
        structureDao = new StructureDaoImp();
        List<StructureEntity> structureAll;
        structureAll=structureDao.getAll(structure.getId_library());
        Gson gson = new Gson();
        List csList=new LinkedList<>();
        for(int i=0;i<structureAll.size();i++)
        {   CommonStructureEntity cs = gson.fromJson(structureAll.get(i).getContent(), CommonStructureEntity.class);
            csList.add(cs);
        }
        ActionContext.getContext().getValueStack().set("list",csList);
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


}
