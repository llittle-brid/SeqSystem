package action;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.OrgInviteDao;
import dao.UserDao;
import daoImp.OrgInviteDaoImp;
import daoImp.UserDaoImp;
import entity.OrgInviteEntity;
import entity.UserEntity;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class OrgInviteAction extends ActionSupport implements RequestAware, SessionAware, ModelDriven<OrgInviteEntity>, Preparable {
    private Map<String, Object> session;
    private Map<String, Object> request;
    private Map<String, Object> dataMap;
    private OrgInviteEntity orgInvite;
    private OrgInviteDao orgInviteDao;

    public String InviteUser(){
        dataMap = new HashMap<String, Object>();
        orgInviteDao = new OrgInviteDaoImp();
        System.out.println("InviteUser.org"+orgInvite.getORG_NAME());
        orgInviteDao.inviteUser(orgInvite);
        List<OrgInviteEntity> list=orgInviteDao.getlist(orgInvite.getORG_NAME());
        Gson gson = new Gson();
        String showOperate = gson.toJson(list);
        dataMap.put("res",showOperate);
        System.out.println("showOrgList"+showOperate);
        return SUCCESS;
    }

    public String reInviteUser(){
        dataMap = new HashMap<String, Object>();
        orgInviteDao = new OrgInviteDaoImp();
        System.out.println("InviteUser.org"+orgInvite.getORG_NAME());
        orgInviteDao.reInviteUser(orgInvite);
        List<OrgInviteEntity> list=orgInviteDao.getlist(orgInvite.getORG_NAME());
        Gson gson = new Gson();
        String showOperate = gson.toJson(list);
        dataMap.put("res",showOperate);
        System.out.println("showOrgList"+showOperate);
        return SUCCESS;
    }

    public String showList(){
        System.out.println("start showOrgInvite");
        dataMap = new HashMap<String, Object>();
        orgInviteDao = new OrgInviteDaoImp();
        System.out.println(orgInvite.getORG_NAME());
        List<OrgInviteEntity> list=orgInviteDao.getlist(orgInvite.getORG_NAME());
        Gson gson = new Gson();
        String showOperate = gson.toJson(list);
        dataMap.put("res",showOperate);
        System.out.println("showOrgList"+showOperate);
        return SUCCESS;
    }

    public String grantOrg(){
        dataMap = new HashMap<String, Object>();
        orgInviteDao = new OrgInviteDaoImp();
        UserDao userDao =  new UserDaoImp();
        System.out.println(orgInvite.getID_USER()+"grantOrg"+orgInvite.getORG_NAME());
        UserEntity sessionUser=(UserEntity)session.get("user");
        boolean res=orgInviteDao.grantOrg(sessionUser.getId_user(),orgInvite.getID_USER(),orgInvite.getORG_NAME());
        int orgManager=userDao.orgManager(sessionUser.getId_user());
        session.put("orgManager",orgManager);
        dataMap.put("res",res);
        return SUCCESS;
    }

    public String deleteUser(){
        dataMap = new HashMap<String, Object>();
        orgInviteDao = new OrgInviteDaoImp();
        orgInviteDao.deleteUser(orgInvite.getID_USER(),orgInvite.getORG_NAME());
        UserDao userdao = new UserDaoImp();
        UserEntity seesionUser=(UserEntity)session.get("user");
        List<UserEntity> orgMember = userdao.getOrgAllMem(seesionUser.getId_user(),orgInvite.getORG_NAME());
        Gson gson = new Gson();
        String json = gson.toJson(orgMember);
        System.out.println("OrgAllMember"+json);
        dataMap.put("res",json);
        return SUCCESS;
    }
    @Override
    public OrgInviteEntity getModel() {
        return  orgInvite;
    }

    @Override
    public void prepare() throws Exception {
        orgInvite = new OrgInviteEntity();
    }

    @Override
    public void setRequest(Map<String, Object> request) {
            this.request=request;
    }

    @Override
    public void setSession(Map<String, Object> session) {
            this.session=session;
    }

    public Map<String, Object> getDataMap() {
        return dataMap;
    }

    public void setDataMap(Map<String, Object> dataMap) {
        this.dataMap = dataMap;
    }
}
