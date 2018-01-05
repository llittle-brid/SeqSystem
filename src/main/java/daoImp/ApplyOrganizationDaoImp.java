package daoImp;

import dao.ApplyOrganizationDao;
import dao.DAO;
import entity.ApplyOrganizationEntity;
import java.sql.Timestamp;


public class ApplyOrganizationDaoImp extends DAO<ApplyOrganizationEntity> implements ApplyOrganizationDao{

    @Override
    public boolean applyOrg(int id,ApplyOrganizationEntity apply) {
        String sql="insert into ORG_APPLY(ID_USER,ORG_NAME,DATE,MESSAGE,TEL) values(?,?,?,?,?)";
        System.out.println("location:applyOrgimp");
        Timestamp createDate = new Timestamp(new java.util.Date().getTime());
        update(sql,id,apply.getOrg_name(),createDate,apply.getMessage(),apply.getTel());
        return true;
    }
}
