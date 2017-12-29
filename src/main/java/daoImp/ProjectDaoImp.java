package daoImp;


import com.opensymphony.xwork2.ActionContext;
import dao.DAO;
import dao.ProjectDao;
import entity.ProjectEntity;
import entity.ShowOrgProjectEntity;
import entity.UserEntity;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class ProjectDaoImp extends DAO<ProjectEntity> implements ProjectDao {

    public boolean save(ProjectEntity p) {
        String sql = "insert into PROJECT(NAME,DATE,DOCUMENT_NAME,STATE,ID_ORGANIZATION,INTRO) values(?,?,?,?,?,?)";
        String sql2 = "select ID_ORGANIZATION from ORGANIZATION where NAME = ?";
        String sql3 = "insert into PROJECT_MEMBER(ID_PROJECT,ID_USER,RANK) values(?,?,?)";

        //use getTime() instead of getDate() to get current date.
        Date createDate = new Date(new java.util.Date().getTime());
        int ID_Org = getForValue(sql2,p.getOrgName());
        UserEntity user = (UserEntity)ActionContext.getContext().getSession().get("user");
        int ID_user = user.getId_user();

        update(sql,p.getName(),createDate,p.getDocument_Name(),1,ID_Org,p.getIntro());

//        set PM of one Project
        int Id_Project = getForValue("select ID_PROJECT from PROJECT where NAME = ?",p.getName());
        update(sql3,Id_Project,ID_user,3);

        return true;
    }

    @Override
    public ProjectEntity getOne(int id) {
        String sql="select * from PROJECT where ID_PROJECT=?";
        ProjectEntity project1 = get(sql,id);
        return project1;
    }

    @Override
    public List<ProjectEntity> getAll(int state) {
        String sql="select * from PROJECT where STATE = ?";
        List<ProjectEntity> project = getForList(sql,state);
        return project;
    }

}
