/**
 * 2018/1/5 17：33
 * wwc
 */
package dao;

import action.ProjectAction;
import entity.ProjectEntity;

import java.util.List;

public interface ProjectDao {
    boolean save(ProjectEntity p);
    void setPM(ProjectEntity p);
    ProjectEntity getOne(int id);
    String findName(int id_Project);        //获取项目ID对应的NAME
    List<ProjectEntity> getAll(int state);
}
