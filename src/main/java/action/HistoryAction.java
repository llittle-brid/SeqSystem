package action;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.HistoryInfoDao;
import dao.InformationDao;

import daoImp.HistoryInfoDaoImp;
import daoImp.InformationDaoImp;
import entity.HistoryInfoEntity;
import entity.InformationEntity;

import entity.UserEntity;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static java.sql.Types.NULL;

public class HistoryAction extends ActionSupport implements RequestAware, SessionAware, ModelDriven<HistoryInfoEntity>, Preparable {
    private HistoryInfoDao historydao;
    private HistoryInfoEntity history;
    private UserEntity user;
    private Map<String, Object> session;
    private Map<String, Object> dataMap;

    public String showHistory(){
        System.out.println("helloHistory");
        dataMap = new HashMap<String, Object>();
        historydao = new HistoryInfoDaoImp();
        List<HistoryInfoEntity> list = new ArrayList<>();
        user = (UserEntity)session.get("user");
        System.out.println(user.getId_user());
        list = historydao.showHistory(user.getId_user());
        System.out.println(list);
        Gson gson = new Gson();
        String infoList = gson.toJson(list);
        dataMap.put("listHistory",infoList);
        return "showHistory";
    }


    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    @Override
    public void setRequest(Map<String, Object> request) {
//        this.request = request;
    }



    public Map<String, Object> getDataMap() {
        return dataMap;
    }

    public void setDataMap(Map<String, Object> dataMap) {
        this.dataMap = dataMap;
    }

    @Override
    public void prepare() throws Exception {
        history = new HistoryInfoEntity();
    }


    @Override
    public HistoryInfoEntity getModel() {
        return history;
    }

}

