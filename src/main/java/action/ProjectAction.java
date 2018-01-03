package action;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.DocumentDao;
import dao.OrganizationDao;
import dao.ProjectDao;
import dao.UserDao;
import daoImp.DocumentDaoImp;
import daoImp.OrganizationDaoImp;
import daoImp.ProjectDaoImp;
import daoImp.UserDaoImp;
import entity.DocumentEntity;
import entity.OrganizationEntity;
import entity.ProjectEntity;
import entity.UserEntity;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
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
        UserEntity user = (UserEntity)ActionContext.getContext().getSession().get("user");

        int rank = projectDao.getRank(id_Project,user.getId_user());
        session.put("rank",rank);
        session.put("PM",pm);
        session.put("project",project);
        session.put("Id_Project",id_Project);
        return SUCCESS;
    }
    public String getProjectMember(){
        dataMap = new HashMap<String, Object>();
        int id_Project = project.getId_Project();

        System.out.println(id_Project);
        projectDao = new ProjectDaoImp();
        project = projectDao.getOne(id_Project);

        List<UserEntity> members = projectDao.getMember(project);
        Gson gson = new Gson();
        String json = gson.toJson(members);

        dataMap.put("res",json);
        return SUCCESS;
    }

    public String getDocument(){
        dataMap = new HashMap<String, Object>();
        DocumentDao documentDao = new DocumentDaoImp();

        List<DocumentEntity> list = documentDao.getAll(project.getId_Project());

        Gson gson = new Gson();
        String jsonString = gson.toJson(list);

        dataMap.put("res",jsonString);
        return SUCCESS;
    }

    public String alterPM(){
        String username = project.getUsername();
        UserDao userDao = new UserDaoImp();
        UserEntity user = userDao.getOne(username);

        System.out.println(username);

        int id_Project = project.getId_Project();

        System.out.println(id_Project);

        projectDao = new ProjectDaoImp();
        projectDao.alterPM(user.getId_user(),id_Project);

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

    public String inviteMember(){
        dataMap = new HashMap<String, Object>();

        String username = project.getUsername();

        int id_Project = project.getId_Project();

        System.out.println(username);
        System.out.println(id_Project);

        UserDao userDao = new UserDaoImp();
        UserEntity user = userDao.getOne(username);

        projectDao = new ProjectDaoImp();
        project = projectDao.getOne(id_Project);

        UserEntity pm = projectDao.getPM(project);

        boolean res = projectDao.inviteMember(user.getId_user(),pm.getName(),project.getName(),id_Project);

        dataMap.put("res",res);
        return SUCCESS;
    }

    public String end(){
        int id_Project = (Integer)request.get("id_Project");
        System.out.println(id_Project);
        projectDao = new ProjectDaoImp();
        projectDao.end(id_Project);
        return "end";
    }

    public String chooseMember(){
        dataMap = new HashMap<String, Object>();
        int id_Project = project.getId_Project();
        String username = project.getUsername();

        projectDao = new ProjectDaoImp();
        project = projectDao.getOne(id_Project);

        List<UserEntity> members = projectDao.getMatched(project,username);
        Gson gson = new Gson();
        String json = gson.toJson(members);

        dataMap.put("res",json);
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
