package action;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.OrganizationDao;
import dao.ProjectDao;

import daoImp.OrganizationDaoImp;
import daoImp.ProjectDaoImp;


import entity.OrganizationEntity;
import entity.ProjectEntity;
import jdk.nashorn.internal.parser.JSONParser;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProjectAction extends ActionSupport implements RequestAware, SessionAware, ModelDriven<ProjectEntity>, Preparable {

    private ProjectDao projectDao;
    private ProjectEntity project;
    private Map<String,Object> request;
    private Map<String,Object> session;
    private Map<String, Object> dataMap;

    public String create() {
        dataMap = new HashMap<String, Object>();
        projectDao = new ProjectDaoImp();
        System.out.println(project.getName()+" "+project.getDocument_Name()+" "+project.getUsername());
        boolean res= projectDao.save(project);
        projectDao.setPM(project);
        dataMap.put("res",res);
        return SUCCESS;
    }

    public String chooseOrg() throws Exception {
        dataMap = new HashMap<String, Object>();
        OrganizationDao organizationDao = new OrganizationDaoImp();
        List<OrganizationEntity> list = organizationDao.getMatched(project.getOrgName());
        Gson gson = new Gson();
        String jsonString = gson.toJson(list);
        dataMap.put("res",jsonString);
        return SUCCESS;
    }

    public String showCurrentList() {
        dataMap = new HashMap<String, Object>();
        projectDao = new ProjectDaoImp();
        List<ProjectEntity> list = projectDao.getAll(1);
        Gson gson = new Gson();
        String json = gson.toJson(list);
//        JsonArray jsonArray = new JsonParser().parse(json).getAsJsonArray();
        System.out.println("project_showList"+json);
        dataMap.put("res",json);
        return SUCCESS;
    }
    public String showCompletedList() {
        dataMap = new HashMap<String, Object>();
        projectDao = new ProjectDaoImp();
        List<ProjectEntity> list = projectDao.getAll(0);
        Gson gson = new Gson();
        String json = gson.toJson(list);
//        JsonArray jsonArray = new JsonParser().parse(json).getAsJsonArray();
        dataMap.put("res",json);
        return SUCCESS;
    }
    @Override
    public String execute() throws Exception {
        dataMap = new HashMap<String, Object>();

        return null;
    }

    public String jmpProjectMember() {
        return "projectMember";
    }
    public String jmpProjectInfo() {
        return "projectInformation";
    }
    public String jmpFinishedProjectInfo(){
        return "finishedProjectInfo";
    }
    @Override
    public void prepare() throws Exception {
        project = new ProjectEntity();
    }

    @Override
    public void setRequest(Map<String, Object> session) {
        this.session = session;
    }

    @Override
    public void setSession(Map<String, Object> request) {
        this.request = request;
    }

    public Map<String, Object> getDataMap() {
        return dataMap;
    }

    public void setDataMap(Map<String, Object> dataMap) {
        this.dataMap = dataMap;
    }

    @Override
    public ProjectEntity getModel() {
        return project;
    }

}
