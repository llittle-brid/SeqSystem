package daoImp;

import dao.DAO;
import dao.DocumentDao;
import entity.DocumentEntity;

import java.util.List;

public class DocumentDaoImp extends DAO<DocumentEntity> implements DocumentDao {
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
