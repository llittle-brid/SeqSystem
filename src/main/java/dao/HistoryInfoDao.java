package dao;

import entity.HistoryInfoEntity;

import java.util.Date;
import java.util.List;

public interface HistoryInfoDao {
    List<HistoryInfoEntity> showHistory(int ID_USER);
    void hasAcceptorRefuseORG(int ID_USER, String content, Date date, int ID_ORG);
    void hasAcceptorRefusePRO(int ID_USER, String content, Date date, int ID_PRO);
    void hasAcceptorGrantORG(int ID_USER, String content, Date date, String ORG_NAME);
    void hasAcceptorDeleteORG(int ID_USER, String content, Date date, String ORG_NAME);
}
