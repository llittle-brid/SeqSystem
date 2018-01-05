/**
 * 2018/1/5 17：33
 * wwc
 */

package dao;

import entity.PersonalCenterEntity;

import java.util.List;

public interface PersonalCenterDao {
    List<PersonalCenterEntity> getAll(int ID);
    void quitorg(int ID, int Org);
}

