package dao;

import entity.ShowOrgProjectEntity;

import java.util.List;

public interface ShowOrgProjectDao {
    List<ShowOrgProjectEntity> getOrgPro(String name);
    List<ShowOrgProjectEntity> getOrgHisPro(String name);
}
