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
    public void deploy(int Id_Document) {
        String sql = "update DOCUMENT set state = 1 where ID_DOCUMENT = ?";
        update(sql,Id_Document);
    }

    @Override
    public int getVersion(int id) {
        String sql = "select max(VERSION) from DOCUMENT where ID_PROJECT = ?";
        int version = Integer.valueOf(getForValue(sql,id).toString());
        return version;
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
