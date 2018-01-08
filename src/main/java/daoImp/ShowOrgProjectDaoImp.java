package daoImp;

import dao.DAO;
import dao.ShowOrgProjectDao;
import entity.ShowOrgProjectEntity;

import java.util.List;

public class ShowOrgProjectDaoImp extends DAO<ShowOrgProjectEntity> implements ShowOrgProjectDao {
    @Override
    public List<ShowOrgProjectEntity> getOrgPro(String name) {
        String sql1 = "select ID_ORGANIZATION from ORGANIZATION where NAME=?";
        int id_org=getForValue(sql1,name);
        System.out.println(id_org);
        String sql2 = "select * from VIEW_showORGPROJECT where ID_ORGANIZATION=? and STATE=1";
        List<ShowOrgProjectEntity> list=getForList(sql2,id_org);
        return list;
    }

    @Override
    public List<ShowOrgProjectEntity> getOrgHisPro(String name) {
        String sql1 = "select ID_ORGANIZATION from ORGANIZATION where NAME=?";
        int id_org=getForValue(sql1,name);
        System.out.println(id_org);
        String sql2 = "select * from VIEW_showORGPROJECT where ID_ORGANIZATION=? and STATE=0";
        List<ShowOrgProjectEntity> list=getForList(sql2,id_org);
        return list;
    }
}
