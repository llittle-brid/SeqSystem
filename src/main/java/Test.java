import dao.CatalogDao;
import daoImp.CatalogDaoImp;
import entity.CatalogEntity;

import java.util.List;

/**
 * Created by DELL on 2017/12/12.
 *
 * @author MJY
 */
public class Test {
    public static void main(String[] args) {
        CatalogDao catalogDao=new CatalogDaoImp();
        List<CatalogEntity> list=catalogDao.getAllIndex(1);
        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i).getTitle());
        }
    }
}
