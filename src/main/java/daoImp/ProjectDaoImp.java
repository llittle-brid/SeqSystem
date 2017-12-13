package daoImp;

import action.ProjectAction;
import dao.DAO;
import dao.ProjectDao;
import entity.ProjectEntity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;

public class ProjectDaoImp extends DAO<ProjectEntity> implements ProjectDao {

    @Override
    public void update(String sql, Object... args) {
        super.update(sql, args);
    }

    public boolean save(ProjectEntity p) {
        String sql = "insert into project(proName,docName,orgName,intro) values(?,?,?,?)";
        try {
//            if (p.getProName()==null||p.getOrgName()==null||p.getDocName())
            update(sql,p.getProName(),p.getDocName(),p.getOrgName(),p.getIntro());
            return true;
        } catch (Exception e){
            return false;
        }
    }

    @Override
    public ProjectEntity getOne(String name) {
        String sql="select * from project where proName=?";
        ProjectEntity project1 = get(sql,name);
        return project1;
    }

    @Override
    public List<ProjectEntity> getAll() {
        String sql="select * from project";
        List<ProjectEntity> project = getForList(sql);
        return project;
    }
}
