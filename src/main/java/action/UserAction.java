package action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.UserDao;
import daoImp.UserDaoImp;
import entity.UserEntity;
import org.apache.struts2.components.If;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by DELL on 2017/11/28.
 *
 * @author MJY
 */
public class UserAction extends ActionSupport implements RequestAware, SessionAware, ModelDriven<UserEntity>, Preparable {

    private UserDao userDao;
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
        if(res==true)
        {
            session.put("username",user.getName());
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
    public String jmpTemp() {
        return "tempPage";
    }
    public String jmpNewproject(){
        return "newprojectPage";
    }

    public String jmpMyprofile(){
        return "myprofilePage";
    }

    public String jmpComponent(){ return "componentPage"; }


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
