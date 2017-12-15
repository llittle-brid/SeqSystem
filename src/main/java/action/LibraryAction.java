package action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.LibraryDao;
import daoImp.LibraryDaoImp;
import entity.LibraryEntity;
import org.apache.struts2.components.If;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import java.util.HashMap;
import java.util.Map;

public class LibraryAction extends ActionSupport implements RequestAware, SessionAware, ModelDriven<LibraryEntity>, Preparable {


    private LibraryDao libraryDao;
    private LibraryEntity library;
    private Map<String,Object> request;
    private Map<String,Object> session;
    private Map<String, Object> dataMap;

    @Override
    public LibraryEntity getModel() {
        return library;
    }

    @Override
    public void prepare() throws Exception {
        library = new LibraryEntity();
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
