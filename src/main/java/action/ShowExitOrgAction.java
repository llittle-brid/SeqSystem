package action;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.ShowExitOrgDao;
import daoImp.ShowExitOrgDaoImp;
import entity.ShowExitOrgEntity;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ShowExitOrgAction extends ActionSupport implements RequestAware,SessionAware,ModelDriven<ShowExitOrgEntity>,Preparable{

    private ShowExitOrgDao ShowExitOrgDao;
    private ShowExitOrgEntity ShowExitOrg;
    private Map<String,Object> request;
    private Map<String,Object> session;
    private Map<String, Object> dataMap;

    public String showList() {
        dataMap = new HashMap<String, Object>();
        ShowExitOrgDao = new ShowExitOrgDaoImp();
        List<ShowExitOrgEntity> list = ShowExitOrgDao.getALL();
        Gson gson = new Gson();
        String json = gson.toJson(list);
//        JsonArray jsonArray = new JsonParser().parse(json).getAsJsonArray();
        System.out.println("exit_org_showList"+json);
        dataMap.put("res",json);
        return "exitOrgList";
    }

    @Override
    public ShowExitOrgEntity getModel() {
        return ShowExitOrg;
    }

    @Override
    public void prepare() throws Exception {
        ShowExitOrg = new ShowExitOrgEntity();
    }

    @Override
    public void setRequest(Map<String, Object> map) {
            this.request=request;
    }

    @Override
    public void setSession(Map<String, Object> map) {
            this.session =session;
    }
    public Map<String, Object> getDataMap() {
        return dataMap;
    }

    public void setDataMap(Map<String, Object> dataMap) {
        this.dataMap = dataMap;
    }
}
