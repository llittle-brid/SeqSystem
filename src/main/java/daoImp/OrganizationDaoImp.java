package daoImp;

import dao.DAO;
import dao.OrganizationDao;
import entity.OrganizationEntity;

import java.util.List;

public class OrganizationDaoImp extends DAO<OrganizationEntity> implements OrganizationDao {

    @Override
    public List<OrganizationEntity> getMatched(String name) {
        name="%"+name+"%";
        String sql = "select * from ORGANIZATION where NAME LIKE ?";
        return getForList(sql,name);
    }

    @Override
    public OrganizationEntity getOne(String name) {
        String sql = "select * from ORGANIZATION where NAME = ? ";
        return get(sql,name);
    }

    @Override
    public List<OrganizationEntity> getAll() {
        String sql = "select * from ORGANIZATION";
        List<OrganizationEntity> list = getForList(sql);
        return list;
    }

    @Override
    public void quit(String NAME) {
        String sql = "delete from VIEW_MYORGANIZATION where NAME = ?";
        update(sql,NAME);
    }
}
