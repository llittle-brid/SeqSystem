package daoImp;

import dao.CatalogDao;
import dao.DAO;
import entity.CatalogEntity;

import java.util.List;

/**
 * Created by DELL on 2017/12/12.
 *
 * @author MJY
 */
public class CatalogDaoImp extends DAO<CatalogEntity> implements CatalogDao {
    @Override
    public List<CatalogEntity> getAllIndex(int id_document) {
        String sql="select title,first_index,second_index,third_index,fourth_index from CATALOG where id_document=? ORDER BY first_index asc,second_index asc,third_index asc,fourth_index asc";
        return getForList(sql,id_document);
    }

    @Override
    public void insert(int id_template, int id_document, String title, int first_index, int second_index, int third_index, int fourth_index) {
        String sql="insert into CATALOG (id_template,id_document,title,first_index,second_index,third_index,fourth_index) values (?,?,?,?,?,?,?)";
        update(sql,id_template,id_document,title,first_index,second_index,third_index,fourth_index);
    }

    @Override
    public void update(int id_document, int first_index) {
        String sql="delete from  CATALOG where id_document=? and first_index=?";
        update(sql,id_document,first_index);
        sql="update CATALOG set first_index=first_index-1 where id_document=? and first_index>? ";
        update(sql,id_document,first_index);
    }

    @Override
    public void update(int id_document, int first_index, int second_index) {
        String sql="delete from  CATALOG where id_document=? and first_index=? and second_index=?";
        update(sql,id_document,first_index,second_index);
        sql="update CATALOG set second_index=second_index-1 where id_document=? and first_index=? and second_index>? ";
        update(sql,id_document,first_index,second_index);
    }

    @Override
    public void update(int id_document, int first_index, int second_index, int third_index) {
        String sql="delete from  CATALOG where id_document=? and first_index=? and second_index=? and third_index=?";
        update(sql,id_document,first_index,second_index,third_index);
        sql="update CATALOG set third_index=third_index-1 where id_document=? and first_index=? and second_index=? and third_index>? ";
        update(sql,id_document,first_index,second_index,third_index);
    }


    @Override
    public void update(int id_document, int first_index, int second_index, int third_index, int fourth_index) {
        String sql="delete from  CATALOG where id_document=? and first_index=? and second_index=? and third_index=? and fourth_index=?";
        update(sql,id_document,first_index,second_index,third_index,fourth_index);
        sql="update CATALOG set fourth_index=fourth_index-1 where id_document=? and first_index=? and second_index=? and third_index=? and fourth_index>?";
        update(sql,id_document,first_index,second_index,third_index,fourth_index);
    }

    @Override
    public void up(int id_document, int first) {
       String sql="update CATALOG set first_index=first_index+100000 where id_document=? and first_index=? ";
        update(sql,id_document,first-1);
        sql="update CATALOG set first_index=first_index-1 where id_document=? and first_index=? ";
        update(sql,id_document,first);
        sql="update CATALOG set first_index=first_index-99999 where id_document=? and first_index=? ";
        update(sql,id_document,first+99999);
    }

    @Override
    public void up(int id_document, int first, int second) {
        String sql="update CATALOG set second_index=second_index+100000 where id_document=? and first_index=? and second_index=?";
        update(sql,id_document,first,second-1);
        sql="update CATALOG set second_index=second_index-1 where id_document=? and first_index=? and second_index=? ";
        update(sql,id_document,first,second);
         sql="update CATALOG set second_index=second_index-99999 where id_document=? and first_index=? and second_index=?";
        update(sql,id_document,first,second+99999);
    }

    @Override
    public void up(int id_document, int first, int second, int third) {
        String sql="update CATALOG set third_index=third_index+100000 where id_document=? and first_index=? and second_index=? and third_index=?";
        update(sql,id_document,first,second,third-1);
        sql="update CATALOG set third_index=third_index-1 where id_document=? and first_index=? and second_index=? and third_index=?";
        update(sql,id_document,first,second,third);
        sql="update CATALOG set second_index=second_index-99999 where id_document=? and first_index=? and second_index=? and third_index=?";
        update(sql,id_document,first,third+99999);
    }

    @Override
    public void up(int id_document, int first, int second, int third, int fourth) {
        String sql="update CATALOG set fourth_index=fourth_index+100000 where id_document=? and first_index=? and second_index=? and third_index=? and fourth=?";
        update(sql,id_document,first,second,third,fourth-1);
        sql="update CATALOG set fourth_index=fourth_index-1 where id_document=? and first_index=? and second_index=?  and third_index=? and fourth_index=? ";
        update(sql,id_document,first,second,third,fourth);
        sql="update CATALOG set fourth_index=fourth_index-99999 where id_document=? and first_index=? and second_index=?  and third_index=? and fourth_index=? ";
        update(sql,id_document,first,second,third,fourth+99999);
    }

    @Override
    public void down(int id_document, int first) {
        String sql="update CATALOG set first_index=first_index+99999 where id_document=? and first_index=? ";
        update(sql,id_document,first+1);
        sql="update CATALOG set first_index=first_index+1 where id_document=? and first_index=? ";
        update(sql,id_document,first);
        sql="update CATALOG set first_index=first_index-100000 where id_document=? and first_index=? ";
        update(sql,id_document,first+100000);
    }

    @Override
    public void down(int id_document, int first, int second) {
        String sql="update CATALOG set second_index=second_index+99999 where id_document=? and first_index=? and second_index=?";
        update(sql,id_document,first,second+1);
        sql="update CATALOG set second_index=second_index+1 where id_document=? and first_index=? and second_index=?";
        update(sql,id_document,first,second);
        sql="update CATALOG set second_index=second_index-100000 where id_document=? and first_index=? and second_index=?";
        update(sql,id_document,first,second+100000);
    }

    @Override
    public void down(int id_document, int first, int second, int third) {
        String sql="update CATALOG set third_index=third_index+99999 where id_document=? and first_index=? and second_index=? and third_index=?";
        update(sql,id_document,first,second,third+1);
        sql="update CATALOG set third_index=third_index+1 where id_document=? and first_index=? and second_index=? and third_index=?";
        update(sql,id_document,first,second,third);
        sql="update CATALOG set second_index=second_index-100000 where id_document=? and first_index=? and second_index=? and third_index=?";
        update(sql,id_document,first,third+100000);
    }

    @Override
    public void down(int id_document, int first, int second, int third, int fourth) {
        String sql="update CATALOG set fourth_index=fourth_index+99999 where id_document=? and first_index=? and second_index=? and third_index=? and fourth=?";
        update(sql,id_document,first,second,third,fourth+1);
        sql="update CATALOG set fourth_index=fourth_index+1 where id_document=? and first_index=? and second_index=?  and third_index=? and fourth_index=? ";
        update(sql,id_document,first,second,third,fourth);
        sql="update CATALOG set fourth_index=fourth_index-100000 where id_document=? and first_index=? and second_index=?  and third_index=? and fourth_index=? ";
        update(sql,id_document,first,second,third,fourth+100000);
    }

    @Override
    public void newCatalog(int id_document,String title,int id_template) {
        String sql="insert into CATALOG (id_template,id_document,title,first_index,second_index,third_index,fourth_index) values (?,?,?,?,?,?,?)";
        update(sql,id_template,id_document,title,1,0,0,0);
    }

    @Override
    public CatalogEntity getOne(int id_document, int first, int second, int third, int fourth) {
        String sql="select * from CATALOG where id_document=? and first_index=? and second_index=? and third_index=? and fourth_index=?";
        return get(sql,id_document,first,second,third,fourth);
    }

    @Override
    public int getIdCatalog(int id_document, int first, int second, int third, int fourth) {
        String sql="select id_catalog from CATALOG where id_document=? and first_index=? and second_index=? and third_index=? and fourth_index=?";
        return getForValue(sql,id_document,first,second,third,fourth);
    }

    @Override
    public void rename(String title,int id_document, int first, int second, int third, int fourth) {
        String sql="update CATALOG set title=? where id_document=? and first_index=? and second_index=?  and third_index=? and fourth_index=? ";
        update(sql,title,id_document,first,second,third,fourth);
    }

    @Override
    public int getRoleCount(int id_document) {
        String sql="select count(*) from CATALOG where id_document=? and id_template=2";
        return Integer.valueOf(getForValue(sql,id_document).toString());
    }

    @Override
    public void saveContent(int id_catalog, String content) {
        String sql="update CATALOG set content=? where id_catalog=?";
        update(sql,content,id_catalog);
    }

}
