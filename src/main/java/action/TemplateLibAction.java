package action;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.LibraryDao;
import dao.StructureDao;
import daoImp.LibraryDaoImp;
import daoImp.StructureDaoImp;
import entity.*;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by DELL on 2018/1/6.
 *
 * @author MJY
 */
public class TemplateLibAction extends ActionSupport implements RequestAware, SessionAware, ModelDriven<LibraryEntity>, Preparable {
    private Map<String,Object> request;
    private Map<String,Object> session;
    LibraryDao libraryDao;
    StructureDao structureDao;
    LibraryEntity libraryEntity;
    private Map<String, Object> dataMap;

    public String getTypeOfLib(){
        libraryDao=new LibraryDaoImp();
        dataMap=new HashMap<>();
        UserEntity seesionUser=(UserEntity)session.get("user");
        List<LibraryEntity> list=libraryDao.getTypeOfLib(seesionUser.getId_user()
                ,libraryEntity.getId_template());
        dataMap.put("libraryList",list);
        return "Re";
    }
    public  String getStructure(){
        structureDao=new StructureDaoImp();
        dataMap=new HashMap<>();
        List<StructureEntity> list=structureDao.getAll(libraryEntity.getId_library());
        int id_template=libraryEntity.getId_template();
        Gson gson=new Gson();
       if(id_template==1){
           List<CommonStructureEntity> structureList=new ArrayList<>();
           for (int i=0;i<list.size();i++){
               structureList.add(gson.fromJson(list.get(i).getContent(),CommonStructureEntity.class));
               dataMap.put("structureList",structureList);
           }
       }
       else if(id_template==2){
           List<UserStructureEntity> structureList=new ArrayList<>();
           for (int i=0;i<list.size();i++){
               structureList.add(gson.fromJson(list.get(i).getContent(),UserStructureEntity.class));
               dataMap.put("structureList",structureList);
           }
       }
       else if(id_template==3){
           List<FunStructureEntity> structureList=new ArrayList<>();
           for (int i=0;i<list.size();i++){
               structureList.add(gson.fromJson(list.get(i).getContent(),FunStructureEntity.class));
               dataMap.put("structureList",structureList);
           }
       }

        return "Re";
    }

    @Override
    public LibraryEntity getModel() {
        return libraryEntity;
    }

    @Override
    public void prepare() throws Exception {
        libraryEntity=new LibraryEntity();
    }

    public Map<String, Object> getDataMap() {
        return dataMap;
    }

    public void setDataMap(Map<String, Object> dataMap) {
        this.dataMap = dataMap;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    @Override
    public void setRequest(Map<String, Object> request) {
        this.request = request;
    }
}
