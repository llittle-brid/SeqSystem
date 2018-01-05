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
        List<SysManagerEntity> list = getForList(sql,NAME);
        return list;
    }
}