package dao;

import action.ProjectAction;
import entity.ProjectEntity;
import entity.ShowOrgProjectEntity;

import java.util.List;

public interface ProjectDao {
    boolean save(ProjectEntity p);
    ProjectEntity getOne(int id);
    List<ProjectEntity> getAll(int state);
}
