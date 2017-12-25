package daoImp;

import dao.ApplyOrganizationDao;
import dao.DAO;
import entity.ApplyOrganizationEntity;
import entity.ShowApplyOrganizationEntity;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;


public class ApplyOrganizationDaoImp extends DAO<ApplyOrganizationEntity> implements ApplyOrganizationDao{

    @Override
    public boolean applyOrg(int id,ApplyOrganizationEntity apply) {
        String sql="insert into ORG_APPLY(ID_USER,ORG_NAME,DATE,MESSAGE,TEL) values(?,?,?,?,?)";
        System.out.println("location:applyOrgimp");
        Timestamp createDate = new Timestamp(new java.util.Date().getTime());
        System.out.println(apply.getOrg_name()+" "+createDate);
        update(sql,id,apply.getOrg_name(),createDate,apply.getMessage(),apply.getTel());
        return true;
    }
}
