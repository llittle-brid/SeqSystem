//        Created by IntelliJ IDEA.
//        User: wwc
//        Date: 22/12/2017
//        Time: 15:55

package daoImp;

import dao.DAO;
import dao.SysManagerDao;
import entity.SysManagerEntity;

import java.util.ArrayList;
import java.util.List;

public class SysManagerDaoImp extends DAO<SysManagerEntity> implements SysManagerDao {

    @Override
    public List<SysManagerEntity> getAll(String NAME) {
        String sql = "select * from VIEW_MYORGANIZATION where ADMIN_NAME = ?";
        List list = new ArrayList();
        list = getForList(sql,NAME);
        return list;
    }
}
