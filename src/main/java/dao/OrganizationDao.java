package dao;

import entity.OrganizationEntity;

import java.util.List;

public interface OrganizationDao {
    OrganizationEntity getOne(String name);
    List<OrganizationEntity> getAll();
    List<OrganizationEntity> getMatched(String name);
}
