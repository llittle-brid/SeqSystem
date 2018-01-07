package dao;

import entity.DocumentEntity;

import java.sql.Timestamp;
import java.util.List;

public interface DocumentDao {
    void create(int id_project, int version, Timestamp timestamp, int id_user);
    DocumentEntity getOne(int id);
    List<DocumentEntity> getAll(int id);
}
