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

    private Map<String, Object> dataMap;

    public String login() {
        dataMap = new HashMap<String, Object>();
        userDao = new UserDaoImp();
        System.out.println(user.getName() + " " + user.getPassword());
        boolean res = userDao.login(user.getName(), user.getPassword());
        dataMap.put("res", res);
        return "RES";
    }

    public String home() {
        return "asd";
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
    public void setRequest(Map<String, Object> map) {
    }

    @Override
    public void setSession(Map<String, Object> map) {
    }

    public Map<String, Object> getDataMap() {
        return dataMap;
    }

    public void setDataMap(Map<String, Object> dataMap) {
        this.dataMap = dataMap;
    }
}
