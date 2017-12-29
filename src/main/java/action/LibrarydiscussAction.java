package action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.LibrarydiscussDao;
import daoImp.LibrarydiscussDaoImp;
import entity.LibrarydiscussEntity;
import entity.LibrarydiscussEntity;
import org.apache.struts2.components.If;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import java.util.HashMap;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class LibrarydiscussAction extends ActionSupport implements RequestAware, SessionAware, ModelDriven<LibrarydiscussEntity>, Preparable {
    private LibrarydiscussDao librarydiscussDao;
    private LibrarydiscussEntity librarydiscuss;
    private Map<String,Object> request;
    private Map<String,Object> session;
    private Map<String, Object> dataMap;

    public String commit() {
        dataMap = new HashMap<String, Object>();
        librarydiscussDao = new LibrarydiscussDaoImp();
        Date a=new Date();
        boolean res=librarydiscussDao.insert(librarydiscuss.getId_user(),librarydiscuss.getId_library(),a,librarydiscuss.getContent());
        dataMap.put("res", res);
        return "RES";
    }


    @Override
    public LibrarydiscussEntity getModel() {
        return librarydiscuss;
    }

    @Override
    public void prepare() throws Exception {
        librarydiscuss = new LibrarydiscussEntity();
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
