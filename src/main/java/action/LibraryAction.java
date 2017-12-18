package action;

import com.opensymphony.xwork2.ActionContext;
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
import java.util.List;
import java.util.Map;

public class LibraryAction extends ActionSupport implements RequestAware, SessionAware, ModelDriven<LibraryEntity>, Preparable {


    private LibraryDao libraryDao;
    private LibraryEntity library;
    private Map<String,Object> request;
    private Map<String,Object> session;
    private Map<String, Object> dataMap;

    public String get() {
        dataMap = new HashMap<String, Object>();
        libraryDao = new LibraryDaoImp();
        List<LibraryEntity> libraryAll;
        int page=1;
        libraryAll=libraryDao.getAll((page-1)*6,(page-1)*6+6);
        int count=libraryDao.getAllcount();
        int num=count/6+1;
        ActionContext.getContext().getValueStack().set("list",libraryAll);
        request.put("num",num);
        return "getall";
    }

    public String getcommon() {
        dataMap = new HashMap<String, Object>();
        libraryDao = new LibraryDaoImp();
        List<LibraryEntity> libraryCommon;
        int page=1;
        int count=libraryDao.getCommoncount();
        int num=count/6+1;
        request.put("num",num);
        libraryCommon=libraryDao.getCommon((page-1)*6,(page-1)*6+6);
        ActionContext.getContext().getValueStack().set("listcommon",libraryCommon);
        return "getcommon";
    }

    public String getuser() {
        dataMap = new HashMap<String, Object>();
        libraryDao = new LibraryDaoImp();
        List<LibraryEntity> libraryUser;
        int page=1;
        int count=libraryDao.getUsercount();
        int num=count/6+1;
        request.put("num",num);
        libraryUser=libraryDao.getUser((page-1)*6,(page-1)*6+6);
        ActionContext.getContext().getValueStack().set("listuser",libraryUser);
        return "getuser";
    }

    public String getcase() {
        dataMap = new HashMap<String, Object>();
        libraryDao = new LibraryDaoImp();
        List<LibraryEntity> libraryCase;
        int page=1;
        int count=libraryDao.getCasecount();
        int num=count/6+1;
        request.put("num",num);
        libraryCase=libraryDao.getCase((page-1)*6,(page-1)*6+6);
        ActionContext.getContext().getValueStack().set("listcase",libraryCase);
        return "getcase";
    }

    public String getpicture() {
        dataMap = new HashMap<String, Object>();
        libraryDao = new LibraryDaoImp();
        List<LibraryEntity> libraryPicture;
        int page=1;
        int count=libraryDao.getPicturecount();
        int num=count/6+1;
        request.put("num",num);
        libraryPicture=libraryDao.getPicture((page-1)*6,(page-1)*6+6);
        ActionContext.getContext().getValueStack().set("listpicture",libraryPicture);
        return "getpicture";
    }

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
