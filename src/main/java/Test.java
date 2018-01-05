import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import dao.CatalogDao;
import daoImp.CatalogDaoImp;
import entity.CatalogEntity;
import entity.FunRole;
import entity.FunUsable;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by DELL on 2017/12/12.
 *
 * @author MJY
 */
public class Test {
    public static void main(String[] args) {
        List<FunUsable> funRoles=new ArrayList<>();
//        FunUsable funRole=new FunUsable("1","2","3","4");
//        funRoles.add(funRole);
//        funRoles.add(funRole);
        Gson gson=new Gson();
        System.out.println(gson.toJson(funRoles));
        Type type = new TypeToken<ArrayList<FunUsable>>() {}.getType();
//        funRoles=gson.fromJson("[{\"roleName\":\"1\",\"roleDescribe\":\"2\",\"usableName\":\"3\",\"usablePara\":\"4\"},{\"roleName\":\"1\",\"roleDescribe\":\"2\",\"usableName\":\"3\",\"usablePara\":\"4\"}]",type);
//        funRoles=gson.fromJson("[{\"usableName\":\"全局可用性：Auto-Save\",\"usablePara\":\"发生条件：请问\"}]",type);

        System.out.println(funRoles.size()==0);
    }
}
