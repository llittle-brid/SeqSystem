package action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.sun.xml.internal.bind.v2.model.core.ID;
import dao.OrganizationDao;
import javax.servlet.http.HttpSession;

import daoImp.OrganizationDaoImp;
import entity.OrganizationEntity;

import entity.UserEntity;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
public class InfomationAction extends ActionSupport implements RequestAware, SessionAware, ModelDriven<OrganizationEntity>, Preparable {
    private OrganizationDao organizationDao;
    private OrganizationEntity organization;
    private UserEntity user;
    private Map<String, Object> session;
    private Map<String, Object> dataMap;


    public String jmpmyinfomation(){
        System.out.println("jmpmyinfomation");
        return "information"; }


    @Override
    public void prepare() throws Exception {
        organization = new OrganizationEntity();
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
    public OrganizationEntity getModel() {
        return organization;
    }
}

