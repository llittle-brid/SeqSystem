package action;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.oracle.javafx.jmx.json.JSONWriter;
import dao.OrganizationDao;
import dao.ProjectDao;

import daoImp.OrganizationDaoImp;
import daoImp.ProjectDaoImp;


import entity.OrganizationEntity;
import entity.ProjectEntity;
import entity.UserEntity;
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
        System.out.println(project.getName()+" "+project.getDocument_Name());
        boolean res= projectDao.save(project);
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
        UserEntity user = (UserEntity) ActionContext.getContext().getSession().get("user");
        int ID_user = user.getId_user();
        List<ProjectEntity> list = projectDao.getAll(1,ID_user);
        Gson gson = new Gson();
        String json = gson.toJson(list);
//        JsonArray jsonArray = new JsonParser().parse(json).getAsJsonArray();
//        System.out.println("project_showList"+json);
        dataMap.put("res",json);
        return SUCCESS;
    }
    public String showCompletedList() {
        dataMap = new HashMap<String, Object>();
        projectDao = new ProjectDaoImp();
        UserEntity user = (UserEntity)ActionContext.getContext().getSession().get("user");
        int ID_user = user.getId_user();
        List<ProjectEntity> list = projectDao.getAll(0,ID_user);
        Gson gson = new Gson();
        String json = gson.toJson(list);
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
    public String getProjectInfo(){
        int id_Project = project.getId_Project();
        projectDao = new ProjectDaoImp();
        project = projectDao.getOne(id_Project);
        UserEntity pm = projectDao.getPM(project);

        session.put("PM",pm);
        session.put("project",project);
        session.put("Id_Project",id_Project);
        return SUCCESS;
    }
    public String getProjectMember(){
        dataMap = new HashMap<String, Object>();
        int id_Project = project.getId_Project();
        projectDao = new ProjectDaoImp();
        project = projectDao.getOne(id_Project);

        List<UserEntity> members = projectDao.getMember(project);
        Gson gson = new Gson();
        String json = gson.toJson(members);

        dataMap.put("res",json);
        return SUCCESS;
    }
    public String setVPM(){

        int id_User = project.getId_User();
        int id_Project = project.getId_Project();

        System.out.println(id_User);

        projectDao = new ProjectDaoImp();
        projectDao.setVPM(id_User,id_Project);

        System.out.println(id_Project);

        return SUCCESS;
    }

    public String dismissVPM(){
        int id_User = project.getId_User();
        int id_Project = project.getId_Project();

        System.out.println(id_User);

        projectDao = new ProjectDaoImp();
        projectDao.dismissVPM(id_User,id_Project);

        System.out.println(id_Project);

        return SUCCESS;
    }

    public String deleteMember(){
        int id_User = project.getId_User();
        int id_Project = project.getId_Project();

        projectDao = new ProjectDaoImp();
        projectDao.deleteMember(id_User,id_Project);

        return SUCCESS;
    }

    public String jmpFinishedProjectInfo(){
        return "finishedProjectInfo";
    }
    @Override
    public void prepare() throws Exception {
        project = new ProjectEntity();
    }

    public Map<String, Object> getRequest() {
        return request;
    }

    @Override
    public void setRequest(Map<String, Object> request) {
        this.request = request;
    }

    public Map<String, Object> getSession() {
        return session;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
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
