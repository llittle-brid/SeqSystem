package action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.ProjectDao;

import daoImp.ProjectDaoImp;


import entity.ProjectEntity;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import java.util.HashMap;
import java.util.Map;

public class ProjectAction extends ActionSupport implements RequestAware, SessionAware, ModelDriven<ProjectEntity>, Preparable {

    private ProjectDao projectDao;
    private ProjectEntity project;

    private Map<String, Object> dataMap;

    public String create() {
        dataMap = new HashMap<String, Object>();
        projectDao = new ProjectDaoImp();
        System.out.println(project.getProName()+" "+project.getDocName());
        boolean res= projectDao.save(project);
        dataMap.put("res",res);
        return SUCCESS;
    }

    public String jmpProjectManage() {
        return "myProject";
    }

    @Override
    public void prepare() throws Exception {
        project = new ProjectEntity();
    }

    @Override
    public void setRequest(Map<String, Object> map) {
    }

    @Override
    public void setSession(Map<String, Object> map) {
    }

    public Map<String, Object> getDataMap() {
        return dataMap;
    }

    public void setDataMap(Map<String, Object> dataMap) {
        this.dataMap = dataMap;
    }

    @Override
    public ProjectEntity getModel() {
        return project;
    }

}
