package dao;

import entity.SysManagerEntity;

import java.util.List;

public interface SysManagerDao {
    List<SysManagerEntity> getAll(String NAME);
}