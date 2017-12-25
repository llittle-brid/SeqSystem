package action;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.InformationDao;

import daoImp.InformationDaoImp;
import entity.InformationEntity;

import entity.UserEntity;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
public class InfomationAction extends ActionSupport implements RequestAware, SessionAware, ModelDriven<InformationEntity>, Preparable {
    private InformationDao infodao;
    private InformationEntity information;
    private UserEntity user;
    private Map<String, Object> session;
    private Map<String, Object> dataMap;
    private int ID_PROJECT;
    private int ID_ORGANIZATION;

    public String showInfo(){
        System.out.println("helloshowinfo");
        dataMap = new HashMap<String, Object>();
        infodao = new InformationDaoImp();
        List<InformationEntity> list = new ArrayList<>();
        user = (UserEntity)session.get("user");
        list = infodao.getAll(user.getId_user());
        System.out.println("#########"+user.getId_user());
        Gson gson = new Gson();
        String infoList = gson.toJson(list);
        dataMap.put("listinfo",infoList);
        return "showinfo";
    }
    public String Accept(){
        System.out.println("helloaccept");
        infodao = new InformationDaoImp();
        user = (UserEntity)session.get("user");
        Integer id_user = user.getId_user();
        infodao.accept(information.getID_ORGANIZATION(),information.getID_PROJECT(),id_user);
        System.out.println("^^^^"+information.getID_ORGANIZATION()+"$$$$$$"+information.getID_PROJECT());
        return "acc";
    }

    public String Refuse() {
        return "refuse";
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
        information = new InformationEntity();
    }


    @Override
    public InformationEntity getModel() {
        return information;
    }

    public void setID_PROJECT(int ID_PROJECT) {
        this.ID_PROJECT = ID_PROJECT;
    }
    public void setID_ORGANIZATION(int ID_ORGANIZATION) {
        this.ID_ORGANIZATION = ID_ORGANIZATION;
    }
}

