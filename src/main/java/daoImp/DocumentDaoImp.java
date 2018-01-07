package daoImp;

import dao.DAO;
import dao.DocumentDao;
import entity.DocumentEntity;

import java.sql.Timestamp;
import java.util.List;

public class DocumentDaoImp extends DAO<DocumentEntity> implements DocumentDao {
    @Override
    public void create(int id_project, int version, Timestamp timestamp, int id_user) {
        String sql = "insert into DOCUMENT(ID_PROJECT, VERSION, DATE, ID_USER) VALUES (?,?,?,?)";
        update(sql,id_project,version,timestamp,id_user);
    }

    @Override
    public DocumentEntity getOne(int id) {
        String sql = "select * from DOCUMENT where ID_DOCUMENT = ?";
        DocumentEntity document = getForValue(sql,id);
        return document;
    }

    @Override
    public List<DocumentEntity> getAll(int id) {
        String sql = "select * from VIEW_projectDocs where ID_PROJECT = ?";
        List<DocumentEntity> list = getForList(sql,id);
        return list;
    }
}
