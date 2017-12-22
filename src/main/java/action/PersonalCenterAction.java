//        Created by IntelliJ IDEA.
//        User: wwc
//        Date: 22/12/2017
//        Time: 15:55

package action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.PersonalCenterDao;
import daoImp.PersonalCenterDaoImp;
import entity.PersonalCenterEntity;
import entity.UserEntity;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import java.util.List;
import java.util.Map;
public class PersonalCenterAction extends ActionSupport implements RequestAware, SessionAware, ModelDriven<PersonalCenterEntity>, Preparable {
    private PersonalCenterDao personalcenterdao;
    private PersonalCenterEntity PersonaCenter;
    private UserEntity user;
    private Map<String, Object> session;
    private Map<String, Object> dataMap;
    public String ShowMyorganization(){
        PersonaCenter = new PersonalCenterEntity();
        personalcenterdao = new PersonalCenterDaoImp();
        user = (UserEntity)session.get("user");
        System.out.println(user.getName());
        List list = personalcenterdao.getAll(user.getName());
        ActionContext.getContext().getValueStack().set("list",list);
        return "showmyorganization";
    }


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

