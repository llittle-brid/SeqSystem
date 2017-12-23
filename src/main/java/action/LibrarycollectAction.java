package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.LibrarycollectDao;
import daoImp.LibrarycollectDaoImp;
import entity.LibrarycollectEntity;
import entity.UserEntity;
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
    private int page;

    public String collect() {
        dataMap = new HashMap<String, Object>();
        librarycollectDao = new LibrarycollectDaoImp();
        boolean res=librarycollectDao.collect((((UserEntity)session.get("user")).getId_user()),librarycollect.getId_library());
        dataMap.put("res", res);
        return "RES";
    }

    public String Mycollect() {
        dataMap = new HashMap<String, Object>();
        librarycollectDao = new LibrarycollectDaoImp();
        List<LibrarycollectEntity> librarycollectAll;
        int page=1;
        librarycollectAll=librarycollectDao.getMycollect((((UserEntity)session.get("user")).getId_user()),(page-1)*6,(page-1)*6+6);
        ActionContext.getContext().getValueStack().set("list",librarycollectAll);
        int count=librarycollectDao.getAllcount((((UserEntity)session.get("user")).getId_user()));
        int num=count/6+1;
        request.put("num",num);
        request.put("page",page);
        return "getMycollect";
    }

    public String Mycollectagain(){
        dataMap = new HashMap<String, Object>();
        librarycollectDao = new LibrarycollectDaoImp();
        List<LibrarycollectEntity> librarycollectAllagain;
        librarycollectAllagain=librarycollectDao.getMycollect((((UserEntity)session.get("user")).getId_user()),(page-1)*6,(page-1)*6+6);
        ActionContext.getContext().getValueStack().set("list",librarycollectAllagain);
        int count=librarycollectDao.getAllcount((((UserEntity)session.get("user")).getId_user()));
        int num=count/6+1;
        request.put("num",num);
        request.put("page",page);
        return "getMycollect";
    }



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


    public void setPage(int page) {
        this.page = page;
    }

}
