package daoImp;


import dao.DAO;
import dao.ProjectDao;
import entity.ProjectEntity;

import java.sql.Date;
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
