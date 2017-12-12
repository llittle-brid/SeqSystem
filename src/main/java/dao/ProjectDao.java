package dao;

import action.ProjectAction;
import entity.ProjectEntity;

import java.util.List;

public interface ProjectDao {
    boolean save(ProjectEntity p);
    ProjectEntity getOne(String name);
    List<ProjectEntity> getAll();
}
