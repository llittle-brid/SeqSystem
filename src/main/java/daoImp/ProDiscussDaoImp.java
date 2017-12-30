package daoImp;

import dao.DAO;
import dao.ProDiscussDao;
import entity.ProDiscussEntity;

import java.sql.Timestamp;
import java.util.List;

/**
 * Created by DELL on 2017/12/25.
 *
 * @author MJY
 */
public class ProDiscussDaoImp extends DAO<ProDiscussEntity> implements ProDiscussDao {
    @Override
    public void commit(int id_user, int id_catalog, Timestamp time, String content) {
        String sql="insert into PRO_DISCUSS (id_user,id_catalog,time,content) values (?,?,?,?)";
        update(sql,id_user,id_catalog,time,content);
        return;
    }

    @Override
    public void commit1(int id_user, int id_project, Timestamp time, String content) {
        String sql="insert into PRO_DISCUSS (id_user,id_project,time,content) values (?,?,?,?)";
        update(sql,id_user,id_project,time,content);
        return;
    }

    @Override
    public List<ProDiscussEntity> getCatalogDis(int id_catalog) {
        String sql="select * from VIEW_PRO_DISCUSS where id_catalog=? order by time desc";
        return getForList(sql,id_catalog);
    }

    @Override
    public List<ProDiscussEntity> getProjectDis(int id_project) {
        String sql="select * from VIEW_PRO_DISCUSS where ID_PROJECT =? order by time desc";
        return getForList(sql,id_project);
    }

    @Override
    public void delete(int id_pro_discuss) {
        String sql="delete from PRO_DISCUSS where id_pro_discuss=?";
        update(sql,id_pro_discuss);
    }
}
