package dao;

import entity.ApplyOrganizationEntity;
import entity.ShowApplyOrganizationEntity;

import java.util.List;

public interface ApplyOrganizationDao {
    boolean applyOrg(int id,ApplyOrganizationEntity apply);
    boolean createOrg(ApplyOrganizationEntity create);
}
