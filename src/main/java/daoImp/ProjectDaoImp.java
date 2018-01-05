package daoImp;


import com.opensymphony.xwork2.ActionContext;
import dao.DAO;
import dao.ProjectDao;
import entity.ProjectEntity;
import entity.UserEntity;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

public class ProjectDaoImp extends DAO<ProjectEntity> implements ProjectDao {

    public boolean save(ProjectEntity p) {
        String sql = "insert into PROJECT(NAME,DATE,DOCUMENT_NAME,STATE,ID_ORGANIZATION,INTRO) values(?,?,?,?,?,?)";
        String sql2 = "select ID_ORGANIZATION from ORGANIZATION where NAME = ?";
        String sql3 = "insert into PROJECT_MEMBER(ID_PROJECT,ID_USER,RANK) values(?,?,?)";

//      use getTime() instead of getDate() to get current date.
        Date createDate = new Date(new java.util.Date().getTime());
        int ID_Org = 0;

//      project Name and Document Name cannot be null
        if (p.getName().length()==0||p.getDocument_Name().length()==0){
            return false;
        }

//      if org is not provided
        if (p.getOrgName().length()==0){
            ID_Org = 0;
        }
        else {
            try {
                ID_Org = getForValue(sql2,p.getOrgName());
            } catch (Exception e){
                return false;
            }
        }

        UserEntity user = (UserEntity)ActionContext.getContext().getSession().get("user");
        int ID_User = user.getId_user();

        try{
//          新增项目，同时获取自增项目ID
            int Id_Project = insert(sql,p.getName(),createDate,p.getDocument_Name(),1,ID_Org,p.getIntro());
//          set PM of one Project
            update(sql3,Id_Project,ID_User,3);

            return true;
        }catch (Exception e){
            return false;
        }
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
        String sql="select USER.ID_USER, USER.NAME, MAIL, TEL, RANK from USER, VIEW_projectMember where USER.ID_USER=VIEW_projectMember.ID_USER and ID_PROJECT=?";
        UserDaoImp userDao = new UserDaoImp();
        List<UserEntity> members = userDao.getForList(sql,p.getId_Project());
        return members;
    }

    @Override
    public List<UserEntity> getMatched(ProjectEntity p, String name) {
        name = "%"+name+"%";
        String sql="select USER.ID_USER, USER.NAME, RANK from USER, VIEW_projectMember where USER.ID_USER=VIEW_projectMember.ID_USER and VIEW_projectMember.ID_PROJECT = ? and USER.NAME LIKE ?";
        UserDaoImp userDao = new UserDaoImp();
        List<UserEntity> members = userDao.getForList(sql,p.getId_Project(),name);
        return members;
    }

    @Override
    public boolean alterPM(int idUser, int idProject) {
        String sql = "select count(*) from PROJECT_MEMBER where ID_PROJECT = ? and ID_USER = ?";
        if (Integer.valueOf(getForValue(sql,idProject,idUser))<1){
            return false;
        }
        else {
            String sql1 = "update PROJECT_MEMBER set RANK=3 where ID_PROJECT = ? and ID_USER = ?";
            try {
                update(sql1, idProject, idUser);
            } catch (Exception e) {
                return false;
            }
            String sql2="update PROJECT_MEMBER set RANK=5 where ID_PROJECT = ? and RANK = 3";
            update(sql2,idProject);
            return true;
        }
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
    public boolean inviteMember(int idUser, String PM, String projectName,int idProject) {
        String verb = " invite you to join ";
        String content = PM+verb+projectName;

        String sql1 = "select count(*) from PROJECT_MEMBER where ID_PROJECT = ? and ID_USER = ?";

        if (Integer.valueOf(getForValue(sql1,idProject,idUser))==1) {
            return false;
        }

        else {
            String sql = "insert into PROJECT_APPLY(ID_PROJECT,ID_USER,DATE,MESSAGE) VALUES (?,?,?,?)";

            Timestamp time = new Timestamp(new java.util.Date().getTime());

            try {
                update(sql, idProject, idUser, time, content);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
            }
            return false;
        }
    }

    public boolean addMember(int idProject, int idUser){
        String sql1 = "select count(*) from PROJECT_MEMBER where ID_PROJECT = ? and ID_USER = ?";
        if (Integer.valueOf(getForValue(sql1,idProject,idUser))==1) {
            return false;
        }

        else {
            String sql = "insert into PROJECT_MEMBER(ID_PROJECT,ID_USER,RANK) VALUES(?,?,?)";
            update(sql, idProject,idUser,5);

            String sql2 = "insert into PROJECT_APPLY(ID_PROJECT,ID_USER,DATE,MESSAGE) VALUES (?,?,?,?)";
            Timestamp time = new Timestamp(new java.util.Date().getTime());

            String verb = "agreed to join";
            String content = idUser+verb+idProject;
            update(sql, idProject, idUser, time, content);

            return true;
        }
    }

    @Override
    public void end(int idProject) {
        String sql = "update PROJECT set STATE = 0 where ID_PROJECT = ?";
        update(sql,idProject);
    }

    @Override
    public int getRank(int idProject, int idUser) {
        String sql = "select RANK from PROJECT_MEMBER where ID_PROJECT = ? and ID_USER = ?";
        return getForValue(sql,idProject,idUser);
    }

    @Override
    public ProjectEntity getOne(int id) {
        String sql="select * from VIEW_projectINFO where ID_PROJECT=?";
        ProjectEntity project1 = get(sql,id);
        return project1;
    }

    @Override
    public List<ProjectEntity> getAll(int state,int id) {
        String sql="select * from VIEW_projectINFO where STATE = ? and ID_USER = ?";
        List<ProjectEntity> project = getForList(sql,state,id);
        return project;
    }
}
