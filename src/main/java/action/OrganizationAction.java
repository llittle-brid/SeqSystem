//        Created by IntelliJ IDEA.
//        User: wwc
//        Date: 22/12/2017
//        Time: 15:55

package action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.OrganizationDao;
import daoImp.OrganizationDaoImp;
import entity.OrganizationEntity;
import entity.UserEntity;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import java.util.Map;

public class OrganizationAction extends ActionSupport implements RequestAware, SessionAware, ModelDriven<OrganizationEntity>, Preparable {
    private OrganizationDao organizationdao;
    private OrganizationEntity organization;
    private UserEntity user;
    private Map<String, Object> session;
    private Map<String, Object> request;
    private Map<String, Object> dataMap;
    public String quitorg(){
        organization = new OrganizationEntity();
        organizationdao = new OrganizationDaoImp();
        user = (UserEntity)session.get("user");
        System.out.println(user.getName());
        organizationdao.quit(user.getName());
        return "quitorg";
    }


    @Override
    public void prepare() throws Exception {
        organization = new OrganizationEntity();
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


    @Override
    public OrganizationEntity getModel() {
        return organization;
    }
}

