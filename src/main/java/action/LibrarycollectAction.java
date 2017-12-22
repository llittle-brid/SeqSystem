package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.LibrarycollectDao;
import daoImp.LibrarycollectDaoImp;
import entity.LibrarycollectEntity;
import org.apache.struts2.components.If;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class LibrarycollectAction extends ActionSupport implements RequestAware, SessionAware, ModelDriven<LibrarycollectEntity>, Preparable  {
    private LibrarycollectDao librarycollectDao;
    private LibrarycollectEntity librarycollect;
    private Map<String,Object> request;
    private Map<String,Object> session;
    private Map<String, Object> dataMap;



    @Override
    public LibrarycollectEntity getModel() {
        return librarycollect;
    }

    @Override
    public void prepare() throws Exception {
        librarycollect = new LibrarycollectEntity();
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

}
