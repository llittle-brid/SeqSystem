package dao;

import entity.ShowApplyOrganizationEntity;
import java.util.List;



public interface ShowApplyOrgDao {
    List<ShowApplyOrganizationEntity> getALL();
    List<ShowApplyOrganizationEntity> getOthers();
    ShowApplyOrganizationEntity getOne(int id);
    boolean createOrg(ShowApplyOrganizationEntity create);
    boolean refuseOrg(ShowApplyOrganizationEntity refuse);
}
