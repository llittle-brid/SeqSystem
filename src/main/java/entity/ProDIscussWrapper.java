package entity;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;


public class ProDIscussWrapper {
    public ProDiscussEntity proDiscussEntity;

    public int state;

    public ProDIscussWrapper(ProDiscussEntity proDiscussEntity,int id_user) {
        this.proDiscussEntity = proDiscussEntity;
        getState(id_user);
    }

    private void getState(int id_user){
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

    public static List<ProDIscussWrapper> getWrapperList(List<ProDiscussEntity> discussList,int id_user){
        List<ProDIscussWrapper> wrapperList=new LinkedList<>();
        for (int i = 0; i < discussList.size(); i++) {
            wrapperList.add(new ProDIscussWrapper(discussList.get(i),id_user));
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
