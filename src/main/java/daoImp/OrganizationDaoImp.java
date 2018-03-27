//        Created by IntelliJ IDEA.
//        User: wwc
//        Date: 22/12/2017
//        Time: 15:55

package daoImp;

import dao.DAO;
import dao.OrganizationDao;
import entity.ApplyOrganizationEntity;
import entity.OrganizationEntity;

import java.sql.Date;
import java.util.List;

public class OrganizationDaoImp extends DAO<OrganizationEntity> implements OrganizationDao {

    @Override
    public List<OrganizationEntity> getMatched(int id_User, String name) {
        name="%"+name+"%";
        String sql = "select * from VIEW_ORGINFO where ID_USER = ? and NAME LIKE ?";
        return getForList(sql,id_User,name);
    }

    @Override
    public List<OrganizationEntity> getMyOrg(int id) {
        String sql = "select NAME from ORGANIZATION where ID_USER=?";
        List<OrganizationEntity> MyOrgList = getForList(sql,id);
        return MyOrgList;
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

    @Override
    public String findName(int ID_ORGANIZATION) {
        String sql = "select NAME from ORGANIZATION where ID_ORGANIZATION = ?";
        String name = getForValue(sql,ID_ORGANIZATION);
        System.out.println("orgName:"+name);
        return name;
    }
    @Override
    public String findAdminName(int ID_ORGANIZATION) {
        //查询机构管理员ID
        String sql0 = "select ID_USER from ORGANIZATION where ID_ORGANIZATION = ?";
        int AdminID = getForValue(sql0,ID_ORGANIZATION);
        //查询机构管理员名字
        String sql1 = "select NAME from USER where ID_USER = ?";
        String AdminName = getForValue(sql1,AdminID);
        System.out.println("adminname:"+AdminName);
        return AdminName;
    }


    @Override
    public boolean isIn(int id_user,int id_org) {
        String sql = "select count(*) from ORG_MEMBER where ID_USER = ? and ID_ORGANIZATION = ?";
        if (Integer.valueOf(getForValue(sql,id_user,id_org).toString())>0)
            return true;
        else
            return false;
    }
}
