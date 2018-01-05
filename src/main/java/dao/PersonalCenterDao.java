//        Created by IntelliJ IDEA.
//        User: wwc
//        Date: 22/12/2017
//        Time: 15:55

package dao;

import entity.PersonalCenterEntity;

import java.util.List;

public interface PersonalCenterDao {
    List<PersonalCenterEntity> getAll(int ID);
}

