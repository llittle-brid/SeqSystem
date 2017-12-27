package dao;

import entity.ProDiscussEntity;

import java.sql.Timestamp;
import java.util.List;

/**
 * Created by DELL on 2017/12/25.
 *
 * @author MJY
 */
public interface ProDiscussDao {
    void commit(int id_user,int id_catalog,Timestamp time,String content);

    List<ProDiscussEntity> getCatalogDis(int id_catalog);

    void delete(int id_pro_discuss);
}
