package dao;

import action.ProjectAction;
import entity.ProjectEntity;

import java.util.List;

public interface ProjectDao {
    boolean save(ProjectEntity p);
    void setPM(ProjectEntity p);
    ProjectEntity getOne(int id);
    List<ProjectEntity> getAll(int state);
}
