/**
 * 2018/1/5 17：33
 * wwc
 */
package dao;

import entity.OrganizationEntity;

import java.util.List;

public interface OrganizationDao {
    OrganizationEntity getOne(String name);
    List<OrganizationEntity> getAll();
    void quit(String NAME);
    String findName(int ID_ORGANIZATION);  //获取机构ID对应的NAME
    List<OrganizationEntity> getMatched(String name);
}
