package daoImp;


import dao.DAO;
import dao.ProjectDao;
import entity.ProjectEntity;
import entity.UserEntity;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class ProjectDaoImp extends DAO<ProjectEntity> implements ProjectDao {

    public boolean save(ProjectEntity p) {
        String sql = "insert into PROJECT(NAME,DATE,DOCUMENT_NAME,STATE,ID_ORGANIZATION,INTRO) values(?,?,?,?,?,?)";
        String  sql2 = "select ID_ORGANIZATION from ORGANIZATION where NAME = ?";

        //use getTime() instead of getDate() to get current date.
        Date createDate = new Date(new java.util.Date().getTime());

        int ID_Org = getForValue(sql2,p.getOrgName());

        update(sql,p.getName(),createDate,p.getDocument_Name(),1,ID_Org,p.getIntro());

        return true;
    }

    public void setPM(ProjectEntity p) {
        String sql3 = "insert into PROJECT_MEMBER (ID_PROJECT,ID_USER,RANK) values(?,?,?)";
        String sql4 = "select ID_PROJECT from PROJECT where NAME = ?";
        String sql5 = "select ID_USER from USER where NAME = ?";
        int ID_project = getForValue(sql4,p.getName());
        int ID_user = getForValue(sql5,p.getUsername());
        update(sql3,ID_project,ID_user,3);
    }

//    public UserEntity getProMember(){
//
//    }
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
