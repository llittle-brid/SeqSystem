package dao;

import entity.DocumentEntity;

import java.util.List;

public interface DocumentDao {
    DocumentEntity getOne(int id);
    List<DocumentEntity> getAll(int id);
}
