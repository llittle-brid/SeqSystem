package action;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import dao.LibrarydiscussDao;
import dao.StructureDao;
import dao.LibraryDao;
import daoImp.LibraryDaoImp;
import daoImp.LibrarydiscussDaoImp;
import daoImp.StructureDaoImp;
import entity.*;
import org.apache.struts2.components.If;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import util.Json;
import com.google.gson.Gson;

import java.util.*;

public class StructureAction extends ActionSupport implements RequestAware, SessionAware, ModelDriven<StructureEntity>, Preparable {
    private StructureDao structureDao;
    private LibrarydiscussDao librarydiscussDao;
    private LibraryDao libraryDao;
    private LibraryEntity library;
    private LibrarydiscussEntity librarydiscuss;
    private StructureEntity structure;
    private Map<String,Object> request;
    private Map<String,Object> session;
    private Map<String, Object> dataMap;
    private int id_template;
    private int page;
    private int pagedis;


    public String get()
    {
        structureDao = new StructureDaoImp();
        librarydiscussDao = new LibrarydiscussDaoImp();
        libraryDao=new LibraryDaoImp();

        List<LibrarydiscussEntity> discussAll=librarydiscussDao.getAll(structure.getId_library(),(pagedis-1)*4,(pagedis-1)*4+4);
        List<LiDicussE> ldList=new LinkedList<>();
        for (int i = 0; i < discussAll.size(); i++) {
            Date a=new Date();
            ldList.add(new LiDicussE(discussAll.get(i),a.getTime()-discussAll.get(i).getTime().getTime()));
        }
        ActionContext.getContext().getValueStack().set("listdis",ldList);

        int discussnum=librarydiscussDao.getcount(structure.getId_library());
        int numdis=discussnum/4+1;
        request.put("pagedis",pagedis);
        request.put("dn",discussnum);
        request.put("numdis",numdis);

        library=libraryDao.getOne(structure.getId_library());
        request.put("library",library);

        Gson gson = new Gson();

        List<StructureEntity> structureAll;
        if(id_template==1){
            structureAll=structureDao.getAll(structure.getId_library(),(page-1)*9,(page-1)*9+9);
            int count=structureDao.count(structure.getId_library());
            int num=count/9+1;
            request.put("num",num);
            request.put("page",page);
            request.put("id_library",structure.getId_library());
            request.put("id_template",id_template);
            List csList=new LinkedList<>();
            for(int i=0;i<structureAll.size();i++)
            {   CommonStructureEntity cs = gson.fromJson(structureAll.get(i).getContent(), CommonStructureEntity.class);
                csList.add(cs);
            }
            ActionContext.getContext().getValueStack().set("list1",csList);
        }
        else if(id_template==2) {
            structureAll=structureDao.getAll(structure.getId_library(),(page-1)*4,(page-1)*4+4);
            int count=structureDao.count(structure.getId_library());
            int num=count/4+1;
            request.put("num",num);
            request.put("page",page);
            request.put("id_library",structure.getId_library());
            request.put("id_template",id_template);
            List usList=new LinkedList<>();
            for(int i=0;i<structureAll.size();i++)
            {   UserStructureEntity us = gson.fromJson(structureAll.get(i).getContent(), UserStructureEntity.class);
                usList.add(us);
            }
            System.out.println(usList);
            System.out.println(structureAll);
            ActionContext.getContext().getValueStack().set("list2",usList);
        }
        else if(id_template==3) {
            structureAll=structureDao.getAll(structure.getId_library(),(page-1)*4,(page-1)*4+4);
            int count=structureDao.count(structure.getId_library());
            int num=count/4+1;
            request.put("num",num);
            request.put("page",page);
            request.put("id_library",structure.getId_library());
            request.put("id_template",id_template);
            List casList=new LinkedList<>();
            for(int i=0;i<structureAll.size();i++)
            {   CaseStructureEntity cas = gson.fromJson(structureAll.get(i).getContent(), CaseStructureEntity.class);
                casList.add(cas);
            }
            ActionContext.getContext().getValueStack().set("list3",casList);
        }

        return "get";
    }
    @Override
    public StructureEntity getModel() {
        return structure;
    }

    @Override
    public void prepare() throws Exception {
        structure = new StructureEntity();
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    @Override
    public void setRequest(Map<String, Object> request) {
        this.request = request;
    }

    public Map<String, Object> getDataMap() {
        return dataMap;
    }

    public void setDataMap(Map<String, Object> dataMap) {
        this.dataMap = dataMap;
    }

    public void setId_template(int id_template) {
        this.id_template = id_template;
    }
    public void setPage(int page) {
        this.page = page;
    }
    public void setPagedis(int pagedis) {
        this.pagedis = pagedis;
    }
}
