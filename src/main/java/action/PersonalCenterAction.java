//        Created by IntelliJ IDEA.
//        User: wwc
//        Date: 22/12/2017
//        Time: 15:55

package action;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.PersonalCenterDao;
import daoImp.PersonalCenterDaoImp;
import daoImp.ProjectDaoImp;
import entity.PersonalCenterEntity;
import entity.ProjectEntity;
import entity.UserEntity;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
public class PersonalCenterAction extends ActionSupport implements RequestAware, SessionAware, ModelDriven<PersonalCenterEntity>, Preparable {
    private PersonalCenterDao personalcenterdao;
    private PersonalCenterEntity PersonaCenter;
    private UserEntity user;
    private Map<String, Object> session;
    private Map<String, Object> dataMap;

    /**
     * 显示页面信息
     * @return
     */
    public String showList() {
        dataMap = new HashMap<String, Object>();
        personalcenterdao = new PersonalCenterDaoImp();
        List<PersonalCenterEntity> list = new ArrayList<>();
        user = (UserEntity)session.get("user");
        System.out.println("####"+user.getId_user());
        list = personalcenterdao.getAll(user.getId_user());
        Gson gson = new Gson();
        String personallist = gson.toJson(list);
//        JsonArray jsonArray = new JsonParser().parse(json).getAsJsonArray();
        dataMap.put("listorg",personallist);
        System.out.println(personallist);
        return "orgList";
    }

    /**
     * 转跳到个人中心
     * @return
     */
    public String jmpMyprofile(){
        return "myprofilePage";
    }

    /**
     *
     * @throws Exception
     */
    @Override
    public void prepare() throws Exception {
        PersonaCenter = new PersonalCenterEntity();
    }


    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    @Override
    public void setRequest(Map<String, Object> request) {
//        this.request = request;
    }



    public Map<String, Object> getDataMap() {
        return dataMap;
    }

    public void setDataMap(Map<String, Object> dataMap) {
        this.dataMap = dataMap;
    }


    @Override
    public PersonalCenterEntity getModel() {
        return PersonaCenter;
    }
}

