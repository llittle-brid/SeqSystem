package daoImp;

import dao.AccessoryDao;
import dao.DAO;
import dao.ProDiscussDao;
import entity.ProDiscussEntity;

import java.math.BigInteger;
import java.sql.SQLException;
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
    public void commit(int id_user, int id_project, Timestamp time, String content, List<String> MyFileFileName, List<String> Path) {
        String sql="insert into PRO_DISCUSS (id_user,id_project,time,content) values (?,?,?,?)";

        int id_pro_discuss = 0;
        try {
            id_pro_discuss = insert(sql,id_user,id_project,time,content);
        }catch (SQLException s){
            id_pro_discuss = 0;
        }
//        存在问题：高并发情况下，可能会获取到错误的ID
//        String sql0 = "SELECT `AUTO_INCREMENT` FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'seq' AND TABLE_NAME = 'PRO_DISCUSS'";
//
//        int id_pro_discuss = Integer.valueOf(getForValue(sql0).toString())-1;

        String sql1="insert into ACCESSORY (id_pro_discuss,filename,path) values(?,?,?)";

        if (MyFileFileName != null) {
            for (int i = 0; i < MyFileFileName.size(); i++) {
                update(sql1, id_pro_discuss, MyFileFileName.get(i),Path.get(i));
            }
        }

    }

    @Override
    public void commitToCatalog(int id_user, int id_catalog, Timestamp time, String content, List<String> MyFileFileName, List<String> Path) {
        String sql="insert into PRO_DISCUSS (id_user,id_catalog,time,content) values (?,?,?,?)";

        int id_pro_discuss = 0;
        try {
            id_pro_discuss = insert(sql,id_user,id_catalog,time,content);
        }catch (SQLException s){
            id_pro_discuss = 0;
        }
//        存在问题：高并发情况下，可能会获取到错误的ID
//        String sql0 = "SELECT `AUTO_INCREMENT` FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'seq' AND TABLE_NAME = 'PRO_DISCUSS'";
//
//        int id_pro_discuss = Integer.valueOf(getForValue(sql0).toString())-1;

        String sql1="insert into ACCESSORY (id_pro_discuss,filename,path) values(?,?,?)";

        if (MyFileFileName != null) {
            for (int i = 0; i < MyFileFileName.size(); i++) {
                update(sql1, id_pro_discuss, MyFileFileName.get(i),Path.get(i));
            }
        }

    }

    @Override
    public List<ProDiscussEntity> getCatalogDis(int id_catalog) {
        String sql="select * from VIEW_PRO_DISCUSS where id_catalog=? ";
        List<ProDiscussEntity> proDiscussEntityList = getForList(sql,id_catalog);

        AccessoryDao accessoryDao = new AccessoryDaoImp();

        int id_pro_discuss = 0;

        for (int i=0;i<proDiscussEntityList.size();i++){
            id_pro_discuss = proDiscussEntityList.get(i).getId_pro_discuss();
            proDiscussEntityList.get(i).setAccessoryEntityList(accessoryDao.getAll(id_pro_discuss));
        }
        return proDiscussEntityList;
    }

    @Override
    public List<ProDiscussEntity> getProjectDis(int id_project,int page) {
        String sql="select * from VIEW_PRO_DISCUSS where ID_PROJECT = ? LIMIT ?,3;";

        List<ProDiscussEntity> proDiscussEntityList = getForList(sql,id_project,page);

        AccessoryDao accessoryDao = new AccessoryDaoImp();

        int id_pro_discuss = 0;

        for (int i=0;i<proDiscussEntityList.size();i++){
            id_pro_discuss = proDiscussEntityList.get(i).getId_pro_discuss();
            proDiscussEntityList.get(i).setAccessoryEntityList(accessoryDao.getAll(id_pro_discuss));
        }
        return proDiscussEntityList;
    }


    @Override
    public void delete(int id_pro_discuss) {
        String sql="delete from PRO_DISCUSS where id_pro_discuss=?";
        String sql1="delete from ACCESSORY where id_pro_discuss=?";
        update(sql,id_pro_discuss);
        update(sql1,id_pro_discuss);
    }

    @Override
    public int getProDisNum(int id_project) {
        String sql = "select count(*) from VIEW_PRO_DISCUSS where ID_PROJECT = ? ";
        int num = Integer.valueOf(getForValue(sql,id_project).toString());
        return num;
    }
}
