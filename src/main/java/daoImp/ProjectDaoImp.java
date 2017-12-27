package daoImp;


import com.opensymphony.xwork2.ActionContext;
import dao.DAO;
import dao.ProjectDao;
import dao.UserDao;
import entity.ProjectEntity;
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


    public UserEntity getPM(ProjectEntity p){
        String sql="select ID_USER from VIEW_projectMember where RANK = 3 and ID_PROJECT = ?";
        int ID_user = getForValue(sql,p.getId_Project());
        UserDaoImp userDao = new UserDaoImp();
        UserEntity user = userDao.getOne1(ID_user);
        return user;
    }

    @Override
    public List<UserEntity> getMember(ProjectEntity p) {
        String sql="select USER.ID_USER, USER.NAME, MAIL, TEL, RANK from USER, VIEW_projectMember where USER.ID_USER=VIEW_projectMember.ID_USER and ID_PROJECT=?;";
        UserDaoImp userDao = new UserDaoImp();
        List<UserEntity> members = userDao.getForList(sql,p.getId_Project());
        return members;
    }

    @Override
    public void setVPM(int idUser,int idProject) {
        String sql="update PROJECT_MEMBER set RANK=4 where ID_USER = ? and ID_PROJECT = ?";
        update(sql,idUser,idProject);
    }

    @Override
    public void dismissVPM(int idUser,int idProject) {
        String sql="update PROJECT_MEMBER set RANK=5 where ID_USER = ? and ID_PROJECT = ?";
        update(sql,idUser,idProject);
    }

    @Override
    public void deleteMember(int idUser,int idProject) {
        String sql="delete from PROJECT_MEMBER where ID_USER = ? and ID_PROJECT = ?";
        update(sql,idUser,idProject);
    }

    @Override
    public ProjectEntity getOne(int id) {
        String sql="select * from PROJECT where ID_PROJECT=?";
        ProjectEntity project1 = get(sql,id);
        return project1;
    }

    @Override
    public List<ProjectEntity> getAll(int state,int id) {
        String sql="select * from VIEW_projectMember where STATE = ? and ID_USER = ?";
        List<ProjectEntity> project = getForList(sql,state,id);
        return project;
    }
}
