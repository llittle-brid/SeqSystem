package daoImp;

import dao.DAO;
import dao.UsableDao;
import dao.UserDao;
import entity.UsableEntity;

import java.util.List;

/**
 * Created by DELL on 2018/1/4.
 *
 * @author MJY
 */
public class UsableDaoImp  extends DAO<UsableEntity> implements UsableDao {
    @Override
    public List<UsableEntity> getUsable() {
        String sql="select * from USABLE";
        return getForList(sql);
    }
}
