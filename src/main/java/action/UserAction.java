package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.SysManagerDao;
import dao.UserDao;
import daoImp.SysManagerDaoImp;
import daoImp.UserDaoImp;
import entity.SysManagerEntity;
import entity.UserEntity;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by DELL on 2017/11/28.
 *
 * @author MJY
 */
public class UserAction extends ActionSupport implements RequestAware, SessionAware, ModelDriven<UserEntity>, Preparable {

    private UserDao userDao;
    private SysManagerDao personalcenterdao;
    private SysManagerEntity PersonaCenter;
    private UserEntity user;
    private Map<String,Object> request;
    private Map<String,Object> session;
    private String tempPassword;
    private String newPassword;
    private Map<String, Object> dataMap;

    public String login() {
        dataMap = new HashMap<String, Object>();
        userDao = new UserDaoImp();
        boolean res = userDao.login(user.getName(), user.getPassword());
        dataMap.put("res", res);
        if(res==true) {
            user = userDao.getOne(user.getName());
            int orgManager=userDao.orgManager(user.getId_user());
            session.put("user",user);
            session.put("orgManager",orgManager);
            System.out.println(user+"and"+orgManager);
        }
        return "RES";
    }

    public String registration() {
        dataMap = new HashMap<String, Object>();
        userDao = new UserDaoImp();
        System.out.println(user.getName() + " " + user.getPassword()+" "+tempPassword);
        boolean res = userDao.registration(user.getName(), user.getPassword(),tempPassword);
        dataMap.put("res", res);
        return "RES";
    }

    public String replacepassword() {
        dataMap = new HashMap<String, Object>();
        userDao = new UserDaoImp();
        System.out.println(user.getName() + " " + user.getPassword()+" "+newPassword);
        boolean res = userDao.replacepassword(user.getName(), user.getPassword(),tempPassword,newPassword);
        dataMap.put("res", res);
        return "RES";
    }

    public String editProfile() {
        System.out.println("start editProfile");
        dataMap = new HashMap<String, Object>();
        userDao = new UserDaoImp();
        UserEntity seesionUser=(UserEntity)session.get("user");
        boolean res=userDao.edit(seesionUser.getName(),user.getQq(),user.getAddress(),user.getMail(),user.getTel(),user.getIntroduce(),user.getGender());
        System.out.println(user.getGender()+"location:UserAction");
        dataMap.put("res", res);
        if(res==true) {
            user = userDao.getOne(seesionUser.getName());
            session.put("user",user);
            System.out.println("put newuser in session");
        }
        return "success";
    }
    public String jmpMyprofile(){
        return "myprofilePage";
    }

    public String jmpLogin(){
        session.put("user",null);
        return "loginPage";
    }
    public String jmpRegistration() {
        return "registrationPage";
    }
    public String jmpReplacepassword(){
        return "replacepasswordPage";
    }
    public String jmpHomepage() {
        return "homePage";
    }
    public String jmpTemp() {
        return "tempPage";
    }
    public String jmpSysManager1(){
        return "SysManager1Page";
    }
    public String jmpSysManager2(){
        return "SysManager2Page";
    }
    public String jmpOrgManager1(){
        return "OrgManager1Page";
    }
    public String jmpOrgManager2(){
        return "OrgManager2Page";
    }
    public String jmpNewproject(){
        return "newprojectPage";
    }
    public String jmpComponent(){ return "componentPage"; }
    public String jmpCasecomponent(){return "casecomponentPage";}
    public String jmpUsercomponent(){return "usercomponentPage";}
    public String jmpCurrentProjectList() {
        return "currentProjectList";
    }
    public String jmpCompletedProjectList() {
        return "completedProjectList";
    }

    @Override
    public UserEntity getModel() {
        return user;
    }

    @Override
    public void prepare() throws Exception {
        user = new UserEntity();
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

    public void setTempPassword(String tempPassword) {
        this.tempPassword = tempPassword;
    }
    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }
}
