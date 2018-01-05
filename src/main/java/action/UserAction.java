
/**
 * 2018/1/5 17：33
 * wwc
 */
package action;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.opensymphony.xwork2.util.ValueStack;
import dao.PersonalCenterDao;
import dao.UserDao;
import daoImp.PersonalCenterDaoImp;
import daoImp.UserDaoImp;
import entity.PersonalCenterEntity;
import entity.UserEntity;
import entity.postmailEntity;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.components.If;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import util.MailUtil;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

 import javax.mail.*;
 import javax.mail.internet.InternetAddress;
 import javax.mail.internet.MimeMessage;
 import java.util.Properties;
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
    private String verification;
    private Map<String, Object> dataMap;

    public String login() {
        dataMap = new HashMap<String, Object>();
        userDao = new UserDaoImp();
        boolean res = userDao.login(user.getName(), user.getPassword());
        dataMap.put("res", res);
        if(res==true) {
            user = userDao.getOne(user.getName());
            session.put("user",user);
            System.out.println(user);
        }
        return "RES";
    }

    public String registration() {
        dataMap = new HashMap<String, Object>();
        userDao = new UserDaoImp();
        System.out.println(user.getName() + " " + user.getPassword()+" "+tempPassword+" "+user.getMail()+" "+verification+" "+"session注册码:"+session.get("verification"));
        if(Integer.parseInt(verification) == (int) session.get("verification")) {
            System.out.println("verificationSUCCESE");
            boolean res = userDao.registration(user.getName(), user.getPassword(), tempPassword, user.getMail());
            dataMap.put("res", res);
        }
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
    //发送验证码
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


    public String jmpLogin(){
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
    public String jmpTemp() { return "tempPage";}
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
    public String jmpMyprofile(){return "jmpMyprofile";}

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
