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

        update(sql,p.getProName(),createDate,p.getDocName(),1,ID_Org,p.getIntro());

        return true;
    }

    public void setPM(ProjectEntity p) {
        String sql3 = "insert into PROJECT_MEMBER (ID_PROJECT,ID_USER,RANK) values(?,?,?)";
        String sql4 = "select ID_PROJECT from PROJECT where NAME = ?";
        String sql5 = "select ID_USER from USER where NAME = ?";
        int ID_project = getForValue(sql4,p.getProName());
        int ID_user = getForValue(sql5,p.getUsername());
        update(sql3,ID_project,ID_user,3);
    }

//    public UserEntity getProMember(){
//
//    }
    @Override
    public ProjectEntity getOne(String name) {
        String sql="select * from PROJECT where Name=?";
        ProjectEntity project1 = get(sql,name);
        return project1;
    }

    @Override
    public List<ProjectEntity> getAll() {
        String sql="select * from PROJECT";
        List<ProjectEntity> project = getForList(sql);
        return project;
    }
}
