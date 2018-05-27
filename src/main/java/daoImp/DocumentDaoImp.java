package daoImp;

import dao.DAO;
import dao.DocumentDao;
import entity.DocumentEntity;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

public class DocumentDaoImp extends DAO<DocumentEntity> implements DocumentDao {
    @Override
    public int create(int id_project, int version, Timestamp timestamp, int id_user) {
        String sql = "insert into DOCUMENT(ID_PROJECT, VERSION, DATE, ID_USER) VALUES (?,?,?,?)";
        try {
            int id =  insert(sql,id_project,version,timestamp,id_user);
            return id;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public void deploy(int Id_Document) {
        String sql = "update DOCUMENT set state = 1 where ID_DOCUMENT = ?";
        update(sql,Id_Document);
    }

    @Override
    public int getVersion(int id) {
        try {
            String sql = "select max(VERSION) from DOCUMENT where ID_PROJECT = ?";
            int version = Integer.valueOf(getForValue(sql,id).toString());
            return version;
        }
        catch (Exception e){
            return 0;
        }


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

    @Override
    public int getDocumentId(int id_project) {
        try {
            String sql="select max(ID_DOCUMENT) from DOCUMENT where ID_PROJECT=? ";
            int id_document = Integer.valueOf(getForValue(sql,id_project).toString());
            return  id_document;
        }
        catch (Exception e)
        {
            return -1;
        }
    }

    @Override
    public void delete(int Id_Document) {
        String sql="delete from DOCUMENT where id_document=?";
        update(sql,Id_Document);
    }
}
