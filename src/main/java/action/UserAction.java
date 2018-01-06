package action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.PersonalCenterDao;
import dao.UserDao;
import daoImp.SysManagerDaoImp;
import daoImp.UserDaoImp;
import entity.PersonalCenterEntity;
import entity.SysManagerEntity;
import entity.UserEntity;
import entity.postmailEntity;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
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
    private PersonalCenterDao personalcenterdao;
    private PersonalCenterEntity PersonaCenter;
    private UserEntity user;
    private Map<String,Object> request;
    private Map<String,Object> session;
    private String tempPassword;
    private String newPassword;
    private Map<String, Object> dataMap;
    private String verification;

    public String login() {
        dataMap = new HashMap<String, Object>();
        userDao = new UserDaoImp();
        boolean res = userDao.login(user.getName(), user.getPassword());
        dataMap.put("res", res);
        if(res==true) {
            user = userDao.getOne(user.getName());
            int orgManager=userDao.orgManager(user.getId_user());
            int sysManager=userDao.sysManager(user.getId_user());
            session.put("user",user);
            session.put("sysManager",sysManager);
            session.put("orgManager",orgManager);
            System.out.println(user+"and"+sysManager+"and"+orgManager);
        }
        return "RES";
    }

    public String registration() {
        dataMap = new HashMap<String, Object>();
        userDao = new UserDaoImp();
        int temp=(int)session.get("verification");
        String sessionVerification=Integer.toString(temp);
        System.out.println(user.getName() + " " + user.getPassword()+" "+tempPassword+" "+user.getMail()+" "+verification+" "+"session注册码:"+session.get("verification"));
        if(sessionVerification.equals(verification) && verification!="") {
            boolean res = userDao.registration(user.getName(), user.getPassword(), tempPassword, user.getMail());
            dataMap.put("res", res);
            System.out.println(res);
        }
        else{
            String res="error";
            dataMap.put("consequence",res);
            System.out.println(res);
        }
        return SUCCESS;
    }

    public String replacepassword() {
        dataMap = new HashMap<String, Object>();
        userDao = new UserDaoImp();
        int temp=(int)session.get("replaceverification");
        String sessionReplaceVerification=Integer.toString(temp);
        System.out.println(user.getName() + " " + " "+newPassword+"  "+"session注册码:"+session.get("replaceverification")+" "+user.getMail());
        if(sessionReplaceVerification.equals(verification) && verification!="") {
            System.out.println("verificationSuccess");
            boolean res = userDao.replacepassword(user.getName(),tempPassword, newPassword);
            dataMap.put("res", res);
        }
        else{
            String res="error";
            dataMap.put("consequence",res);
            System.out.println(res);
        }
        return SUCCESS;
    }

    public String editProfile() {
        System.out.println("start editProfile");
        dataMap = new HashMap<String, Object>();
        userDao = new UserDaoImp();
        UserEntity seesionUser=(UserEntity)session.get("user");
        boolean res=userDao.edit(seesionUser.getName(),user.getQq(),user.getAddress(),user.getTel(),user.getIntroduce(),user.getGender());
        System.out.println(user.getGender()+"location:UserAction");
        dataMap.put("res", res);
        if(res==true) {
            user = userDao.getOne(seesionUser.getName());
            session.put("user",user);
            System.out.println("put newuser in session");
        }
        return "success";
    }
    public String postVerification(){
        userDao = new UserDaoImp();
        dataMap = new HashMap<String, Object>();
        System.out.println("helloverficication");
        int temp = (int) ((Math.random()*9+1)*100000);
        String email = user.getMail();
        session.put("verification",temp);
        System.out.println("email:"+email+"  verification:"+session.get("verification"));
        String mail = user.getMail(); //发送对象的邮箱
        String title = "快易需求助手注册验证码";
        String content = String.valueOf(temp);
        postmailEntity info = new postmailEntity();
        info.setToAddress(mail);
        info.setSubject(title);
        info.setContent(content);
        boolean res= userDao.postmail(info,title);
        dataMap.put("res",res);
        return "RES";
    }

    public String postReplacepassword(){
        userDao = new UserDaoImp();
        System.out.println(user.getName()+"mail:"+user.getMail());
        boolean confirm = userDao.nameAndMail(user.getName(), user.getMail());
        System.out.println(confirm);
        if(confirm) {
            userDao = new UserDaoImp();
            dataMap = new HashMap<String, Object>();
            System.out.println("helloverficication");
            int temp = (int) ((Math.random() * 9 + 1) * 100000);
            String email = user.getMail();
            session.put("replaceverification", temp);
            System.out.println("email:" + email + "  verification:" + session.get("replaceverification"));
            String mail = user.getMail(); //发送对象的邮箱
            String title = "快易需求助手修改密码验证码";
            String content = String.valueOf(temp);
            postmailEntity info = new postmailEntity();
            postmailEntity infomyself = new postmailEntity();
            info.setToAddress(mail);
            info.setSubject(title);
            info.setContent(content);
            boolean res = userDao.postmail(info, title);
            dataMap.put("res", res);
        }
        return "RES";
    }

    public String jmpLogin(){
        session.put("user",null);
        session.put("sysManager",null);
        session.put("orgManager",null);
        return "loginPage";
    }
    public String jmpMyprofile(){
        return "myprofilePage";
    }
    public String jmpRegistration() {
        return "registrationPage";
    }
    public String jmpReplacepassword(){
        return "replacepasswordPage";
    }
    public String jmpHomepage() {
        userDao = new UserDaoImp();
        user = (UserEntity)session.get("user");
        session.put("countnow",userDao.projectNumberNow(user.getId_user()));
        session.put("counthistory",userDao.projectNumberHistory(user.getId_user()));
        dataMap = new HashMap<String, Object>();
        userDao = new UserDaoImp();
        int Mycollectcount = userDao.Mycollectcount((((UserEntity)session.get("user")).getId_user()));
        session.put("Mycollectcount",Mycollectcount);
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
    public String jmpNewproject(){
        return "newprojectPage";
    }

    public String jmpLibrary(){ return "libraryPage"; }
    public String jmpUserlibrary(){return "userlibraryPage";}
    public String jmpCaselibrary(){return "caselibraryPage";}
    public String jmpCommonlibrary(){return "commonlibraryPage";}
    public String jmpPicturelibrary(){return "picturelibraryPage";}
    public String jmpCommoncomponent(){return "commoncomponentPage";}
    public String jmpPicturecomponent(){return "picturecomponentPage";}
    public String jmpMycollect(){return "mycollectPage";}
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
    public void setVerification(String verification) {
        this.verification = verification;
    }
}
