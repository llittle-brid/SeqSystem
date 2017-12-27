package dao;

import action.ProjectAction;
import entity.ProjectEntity;
import entity.UserEntity;

import java.util.List;

public interface ProjectDao {
    boolean save(ProjectEntity p);
    UserEntity getPM(ProjectEntity p);
    List<UserEntity> getMember(ProjectEntity p);
    void setVPM(int idUser,int idProject);
    void dismissVPM(int idUser,int idProject);
    void deleteMember(int idUser,int idProject);
    ProjectEntity getOne(int id);
    List<ProjectEntity> getAll(int state,int id);
}
