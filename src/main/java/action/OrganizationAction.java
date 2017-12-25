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
import dao.AllOrgMemberDao;
import dao.OrganizationDao;
import daoImp.AllOrgMemberDaoImp;
import daoImp.OrganizationDaoImp;
import entity.OrganizationEntity;
import entity.ShowAllOrgMemEntity;
import entity.UserEntity;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class OrganizationAction extends ActionSupport implements RequestAware, SessionAware, ModelDriven<OrganizationEntity>, Preparable {
    private OrganizationDao organizationdao;
    private OrganizationEntity organization;
    private Map<String, Object> session;
    private Map<String, Object> request;
    private Map<String, Object> dataMap;
    public String quitorg(){
        organization = new OrganizationEntity();
        organizationdao = new OrganizationDaoImp();
        UserEntity user = (UserEntity) session.get("user");
        System.out.println(user.getName());
        organizationdao.quit(user.getName());
        return "quitorg";
    }

    public String jmpOrgManager1(){
        dataMap = new HashMap<String, Object>();
        organizationdao = new OrganizationDaoImp();
        UserEntity seesionUser=(UserEntity)session.get("user");
        List<OrganizationEntity> list = organizationdao.getMyOrg(seesionUser.getId_user());
        ActionContext.getContext().getValueStack().set("list",list);
        System.out.println(list);
        return "OrgManager1Page";
    }
    public String showAllMember(){
        dataMap = new HashMap<String, Object>();
        organizationdao = new OrganizationDaoImp();
        AllOrgMemberDao allOrgMemberDao = new AllOrgMemberDaoImp();
        UserEntity seesionUser=(UserEntity)session.get("user");
        List<ShowAllOrgMemEntity> orgMember = allOrgMemberDao.getAllMember();
        Gson gson = new Gson();
        String json = gson.toJson(orgMember);
        System.out.println("OrgAllMember"+json);
        dataMap.put("res",json);
        return "showAllMember";
    }

    public String jmpOrgManager2(){
        return "OrgManager2Page";
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

