package daoImp;

import dao.DAO;
import dao.HistoryInfoDao;
import entity.HistoryInfoEntity;

import javax.print.DocFlavor;
import java.util.Date;
import java.util.List;

public class HistoryInfoDaoImp extends DAO<HistoryInfoEntity> implements HistoryInfoDao {
    @Override
    public List<HistoryInfoEntity> showHistory(int ID_USER) {
        String sql = "select * from VIEW_MESSAGE where ID_USER = ? OR ADMIN_ID= ?";
        List list = getForList(sql,ID_USER, ID_USER);
        return list;
    }

    @Override
    public void hasAcceptorRefuseORG(int ID_USER, String content, Date date, int ID_ORG) {
        System.out.println("content:"+content+" date:"+date);
        String sql = "insert into MESSAGE (ID_USER,CONTENT,DATE,ID_ORG) values(?,?,?,?)";
        update(sql,ID_USER,content,date,ID_ORG);
    }

    @Override
    public void hasAcceptorRefusePRO(int ID_USER, String content, Date date, int ID_PRO) {
        System.out.println("content:"+content+" date:"+date);
        String sql = "insert into MESSAGE (ID_USER,CONTENT,DATE,ID_PRO) values(?,?,?,?)";
        update(sql,ID_USER,content,date,ID_PRO);
    }

    @Override
    public void hasAcceptorGrantORG(int ID_USER, String content, Date date, String ORG_NAME) {
        String sql1 = "select ID_ORGANIZATION from ORGANIZATION where NAME=?";
        int id_org = getForValue(sql1,ORG_NAME);
        String sql = "insert into MESSAGE (ID_USER,CONTENT,DATE,ID_ORG) values(?,?,?,?)";
        update(sql,ID_USER,content,date,id_org);
    }

    @Override
    public void hasAcceptorDeleteORG(int ID_USER, String content, Date date, String ORG_NAME) {
        String sql1 = "select ID_ORGANIZATION from ORGANIZATION where NAME=?";
        int id_org = getForValue(sql1,ORG_NAME);
        String sql = "insert into MESSAGE (ID_USER,CONTENT,DATE,ID_ORG) values(?,?,?,?)";
        update(sql,ID_USER,content,date,id_org);
    }

    @Override
    public void hasRefuseApplyORG(int ID_USER, String content, Date date, String ORG_NAME) {
        String sql = "insert into MESSAGE (ID_USER,CONTENT,DATE) values(?,?,?)";
        update(sql,ID_USER,content,date);
    }
}
