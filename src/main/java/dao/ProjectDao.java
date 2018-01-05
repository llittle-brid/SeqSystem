package dao;

import entity.ProjectEntity;
import entity.ShowOrgProjectEntity;

import entity.UserEntity;
import java.util.List;

public interface ProjectDao {
    boolean save(ProjectEntity p);
    UserEntity getPM(ProjectEntity p);
    List<UserEntity> getMember(ProjectEntity p);
    List<UserEntity> getMatched(ProjectEntity p, String name);

    boolean alterPM(int idUser,int idProject);
    void setVPM(int idUser,int idProject);
    void dismissVPM(int idUser,int idProject);
    void deleteMember(int idUser,int idProject);
    boolean inviteMember(int idUser, String PM, String projectname, int idProject);
    void end(int idProject);
    int getRank(int idProject,int idUser);
    ProjectEntity getOne(int id);
    List<ProjectEntity> getAll(int state,int id);
}
