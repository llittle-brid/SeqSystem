package entity;

import dao.ProjectDao;
import daoImp.ProjectDaoImp;

import java.util.Date;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by DELL on 2017/12/25.
 *  ProDiscussEntity的包装器类，用于加一个属性判断该讨论能否被删除
 * @author MJY
 */
public class ProDIscussWrapper {
    public ProDiscussEntity proDiscussEntity;
    //0不是自己的留言，1留言过期，2可删除
    public int state;

    public ProDIscussWrapper(ProDiscussEntity proDiscussEntity,int id_user,int id_project) {
        this.proDiscussEntity = proDiscussEntity;
        getState(id_user,id_project);
    }

    private void getState(int id_user,int id_project){
        ProjectDao projectDao = new ProjectDaoImp();
        int rank = projectDao.getRank(id_project,id_user);

        if (rank==3) {
            state = 2;
        }

        if (id_user!=proDiscussEntity.getId_user()){
            state=0;
            return;
        }

        Date now=new Date();
        Date disTime=proDiscussEntity.getTime();
//        Calendar calendar=Calendar.getInstance();
//        calendar.setTime(new Date(now.getTime()-disTime.getTime()));
        if (now.getTime()-disTime.getTime()>60000*60*2){
            state=1;
        }
        else state=2;
    }

    public static List<ProDIscussWrapper> getWrapperList(List<ProDiscussEntity> discussList,int id_user,int id_project){
        List<ProDIscussWrapper> wrapperList=new LinkedList<>();
        for (int i = 0; i < discussList.size(); i++) {
            wrapperList.add(new ProDIscussWrapper(discussList.get(i),id_user,id_project));
        }
        return wrapperList;
    }

    public ProDiscussEntity getProDiscussEntity() {
        return proDiscussEntity;
    }

    public void setProDiscussEntity(ProDiscussEntity proDiscussEntity) {
        this.proDiscussEntity = proDiscussEntity;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }
}
