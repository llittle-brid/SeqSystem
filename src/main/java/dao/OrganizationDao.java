//        Created by IntelliJ IDEA.
//        User: wwc
//        Date: 22/12/2017
//        Time: 15:55

package dao;

import entity.OrganizationEntity;

import java.util.List;

public interface OrganizationDao {
    OrganizationEntity getOne(String name);
    List<OrganizationEntity> getAll();
    void quit(String NAME);
    List<OrganizationEntity> getMatched(String name);
    List<OrganizationEntity> getMyOrg(int id);
    String findName(int ID_ORGANIZATION);  //获取机构ID对应的NAME
}
