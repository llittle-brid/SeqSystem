package service;

import entity.CatalogEntity;

import java.util.List;

/**
 * Created by DELL on 2017/12/12.
 *
 * @author MJY
 */
public interface CatalogService {
    List<CatalogEntity> getAll(int id_document);
}
