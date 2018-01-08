package action;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.ApplyOrganizationDao;
import dao.ShowApplyOrgDao;
import daoImp.ApplyOrganizationDaoImp;
import daoImp.HistoryInfoDaoImp;
import daoImp.ShowApplyOrgDaoImp;
import entity.ShowApplyOrganizationEntity;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;



public class ShowApplyOrgAction extends ActionSupport implements RequestAware,SessionAware,ModelDriven<ShowApplyOrganizationEntity>,Preparable {
    private ShowApplyOrgDao ShowApplyOrgDao;
    private ShowApplyOrganizationEntity ShowApplyOrganization;
    private Map<String,Object> request;
    private Map<String,Object> session;
    private Map<String, Object> dataMap;


    public String showList() {
        dataMap = new HashMap<String, Object>();
        ShowApplyOrgDao = new ShowApplyOrgDaoImp();
        List<ShowApplyOrganizationEntity> list = ShowApplyOrgDao.getALL();
        Gson gson = new Gson();
        String json = gson.toJson(list);
//        JsonArray jsonArray = new JsonParser().parse(json).getAsJsonArray();
        System.out.println("org_showList"+json);
        dataMap.put("res",json);
        return SUCCESS;
    }

    public String showOthers() {
        dataMap = new HashMap<String, Object>();
        ShowApplyOrgDao = new ShowApplyOrgDaoImp();
        List<ShowApplyOrganizationEntity> list = ShowApplyOrgDao.getOthers();
        Gson gson = new Gson();
        String json = gson.toJson(list);
//        JsonArray jsonArray = new JsonParser().parse(json).getAsJsonArray();
        System.out.println("apply_orgExitList"+json);
        dataMap.put("res",json);
        return SUCCESS;
    }

    public String agreeOrg(){
        dataMap = new HashMap<String, Object>();
        System.out.println("start createOrg");
        int id_org_apply=ShowApplyOrganization.getId_org_apply();
        ShowApplyOrgDao = new ShowApplyOrgDaoImp();
        HistoryInfoDaoImp history = new HistoryInfoDaoImp();
        ShowApplyOrganization = ShowApplyOrgDao.getOne(id_org_apply);
        List<ShowApplyOrganizationEntity> list=ShowApplyOrgDao.createOrg(ShowApplyOrganization);
        String content = "机构："+ShowApplyOrganization.getOrg_name()+" 审核已通过";
        Date dt=new Date();
        history.hasAcceptorGrantORG( ShowApplyOrganization.getId_user(),content, dt,ShowApplyOrganization.getOrg_name());
        Gson gson = new Gson();
        String json = gson.toJson(list);
        dataMap.put("res",json);
        List<ShowApplyOrganizationEntity> otherList = ShowApplyOrgDao.getOthers();
        Gson gson1 = new Gson();
        String json2 = gson1.toJson(otherList);
        dataMap.put("res2",json2);
        return SUCCESS;
    }

    public String refuseOrg(){
        dataMap = new HashMap<String, Object>();
        System.out.println("start refuseOrg");
        int id_org_apply=ShowApplyOrganization.getId_org_apply();
        ShowApplyOrgDao = new ShowApplyOrgDaoImp();
        HistoryInfoDaoImp history = new HistoryInfoDaoImp();
        ShowApplyOrganization = ShowApplyOrgDao.getOne(id_org_apply);
        ShowApplyOrgDao.refuseOrg(ShowApplyOrganization);
        List<ShowApplyOrganizationEntity> list=ShowApplyOrgDao.getALL();
        String content = "机构："+ShowApplyOrganization.getOrg_name()+" 审核未通过";
        Date dt=new Date();
        history.hasAcceptorGrantORG( ShowApplyOrganization.getId_user(),content, dt,ShowApplyOrganization.getOrg_name());
        Gson gson = new Gson();
        String json = gson.toJson(list);
        dataMap.put("res",json);
        List<ShowApplyOrganizationEntity> otherList = ShowApplyOrgDao.getOthers();
        Gson gson1 = new Gson();
        String json2 = gson1.toJson(otherList);
        dataMap.put("res2",json2);
        return SUCCESS;
    }
    @Override
    public ShowApplyOrganizationEntity getModel() {
        return ShowApplyOrganization;
    }

    @Override
    public void prepare() throws Exception {
        ShowApplyOrganization = new ShowApplyOrganizationEntity();
    }

    @Override
    public void setRequest(Map<String, Object> map) {
        this.request = request;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        this.session = session;
    }
    public Map<String, Object> getDataMap() {
        return dataMap;
    }

    public void setDataMap(Map<String, Object> dataMap) {
        this.dataMap = dataMap;
    }
}
