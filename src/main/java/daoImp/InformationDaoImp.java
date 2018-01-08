package daoImp;

import dao.DAO;
import dao.InformationDao;
import entity.InformationEntity;
import org.apache.commons.lang3.ObjectUtils;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class InformationDaoImp extends DAO<InformationEntity> implements InformationDao{
    @Override
    public List<InformationEntity> getAll(int ID) {
        String sql1 = "select * from VIEW_ORG_USER_APPLY where STATE = 0 and ID_USER = ?";
        List list1 = getForList(sql1,ID);
        String sql2 = "select * from VIEW_PROJECT_APPLY where STATE = 0 and ID_USER = ?";
        List list2 = getForList(sql2,ID);
        List list = new ArrayList();
        list.addAll(list1);
        list.addAll(list2);

        return list;
    }

    @Override
    public void acceptOrg(Integer ID_ORGANIZATION, int ID_USER) {
            String sql = "update ORG_USER_APPLY set STATE=1 where ID_ORGANIZATION=? and ID_USER=?";
            update(sql,ID_ORGANIZATION,ID_USER);
    }
    @Override
    public void acceptPro(Integer ID_ORGANIZATION, int ID_USER) {
        String sql = "update PROJECT_APPLY set STATE=1 where ID_PROJECT=? and ID_USER=?";
        update(sql,ID_ORGANIZATION,ID_USER);
    }
    @Override
    public void refuseOrg(Integer ID_ORGANIZATION, int ID_USER) {
        if(ID_ORGANIZATION != null) {
            String sql = "update ORG_USER_APPLY set STATE=-1 where ID_ORGANIZATION=? and ID_USER=?";
            update(sql,ID_ORGANIZATION,ID_USER);
        }
    }
    @Override
    public void refusePro(Integer ID_PROJECT, int ID_USER) {
        String sql = "update PROJECT_APPLY set STATE=-1 where ID_PROJECT=? and ID_USER=?";
        update(sql,ID_PROJECT,ID_USER);
    }

    @Override
    public void joinPro(Integer ID_PROJECT, int ID_USER) {
        String sql = "insert into PROJECT_MEMBER(ID_PROJECT,ID_USER,RANK) values(?,?,?)";
        update(sql,ID_PROJECT,ID_USER,5);
    }

    @Override
    public void joinOrg(Integer ID_ORGANIZATION, int ID_USER) {
        String sql = "insert into ORG_MEMBER(ID_ORGANIZATION,ID_USER) values(?,?)";
        update(sql,ID_ORGANIZATION,ID_USER);
    }

    @Override
    public void toMember(int id_project, int id_user,String content) {
        String sql = "insert into MESSAGE(ID_USER,CONTENT,DATE,ID_PRO) VALUES (?,?,?,?)";
        Timestamp date = new Timestamp(new java.util.Date().getTime());
        update(sql,id_user,content,date,id_project);
    }
}
