package daoImp;

import dao.DAO;
import dao.LibraryDao;
import entity.LibraryEntity;
import java.util.List;

public class LibraryDaoImp extends DAO<LibraryEntity> implements LibraryDao{

    public LibraryEntity getOne(int id_library)
    {
        String sql="select * from LIBRARY where ID_LIBRARY=?";
        LibraryEntity library1=get(sql,id_library);
        return library1;
    }
    public List<LibraryEntity> getAll(int num1,int num2)
    {
        String sql="SELECT LIBRARY.`NAME`,LIBRARY.ID_TEMPLATE,LIBRARY.COLLECT_NUM,LIBRARY.TIME,LIBRARY.MENTION,LIB_COLLECT.ID_USER,LIBRARY.ID_LIBRARY FROM LIBRARY LEFT JOIN LIB_COLLECT ON LIB_COLLECT.ID_LIBRARY = LIBRARY.ID_LIBRARY order by ID_LIBRARY limit ?,? ";
        List<LibraryEntity> library1=getForList(sql,num1,num2);
        return library1;
    }

    public List<LibraryEntity> getCommon(int num1,int num2)
    {
        String sql="SELECT LIBRARY.`NAME`,LIBRARY.ID_TEMPLATE,LIBRARY.COLLECT_NUM,LIBRARY.TIME,LIBRARY.MENTION,LIB_COLLECT.ID_USER,LIBRARY.ID_LIBRARY FROM LIBRARY LEFT JOIN LIB_COLLECT ON LIB_COLLECT.ID_LIBRARY = LIBRARY.ID_LIBRARY where LIBRARY.ID_TEMPLATE=1 order by ID_LIBRARY limit ?,? ";
        List<LibraryEntity> library1=getForList(sql,num1,num2);
        return library1;
    }

    public List<LibraryEntity> getUser(int num1,int num2)
    {
        String sql="SELECT LIBRARY.`NAME`,LIBRARY.ID_TEMPLATE,LIBRARY.COLLECT_NUM,LIBRARY.TIME,LIBRARY.MENTION,LIB_COLLECT.ID_USER,LIBRARY.ID_LIBRARY FROM LIBRARY LEFT JOIN LIB_COLLECT ON LIB_COLLECT.ID_LIBRARY = LIBRARY.ID_LIBRARY where LIBRARY.ID_TEMPLATE=2 order by ID_LIBRARY limit ?,? ";
        List<LibraryEntity> library1=getForList(sql,num1,num2);
        return library1;
    }

    public List<LibraryEntity> getCase(int num1,int num2)
    {
        String sql="SELECT LIBRARY.`NAME`,LIBRARY.ID_TEMPLATE,LIBRARY.COLLECT_NUM,LIBRARY.TIME,LIBRARY.MENTION,LIB_COLLECT.ID_USER,LIBRARY.ID_LIBRARY FROM LIBRARY LEFT JOIN LIB_COLLECT ON LIB_COLLECT.ID_LIBRARY = LIBRARY.ID_LIBRARY where LIBRARY.ID_TEMPLATE=3 order by ID_LIBRARY limit ?,? ";
        List<LibraryEntity> library1=getForList(sql,num1,num2);
        return library1;
    }

    public List<LibraryEntity> getPicture(int num1,int num2)
    {
        String sql="SELECT LIBRARY.`NAME`,LIBRARY.ID_TEMPLATE,LIBRARY.COLLECT_NUM,LIBRARY.TIME,LIBRARY.MENTION,LIB_COLLECT.ID_USER,LIBRARY.ID_LIBRARY FROM LIBRARY LEFT JOIN LIB_COLLECT ON LIB_COLLECT.ID_LIBRARY = LIBRARY.ID_LIBRARY where LIBRARY.ID_TEMPLATE=4 order by ID_LIBRARY limit ?,? ";
        List<LibraryEntity> library1=getForList(sql,num1,num2);
        return library1;
    }

    public int getAllcount()
    {
        String sql="select count(*) from LIBRARY";
        int count=Integer.valueOf(getForValue(sql).toString());
        return count;
    }
    public int getCommoncount()
    {
        String sql="select count(*) from LIBRARY where ID_TEMPLATE=1";
        int count=Integer.valueOf(getForValue(sql).toString());
        return count;
    }
    public int getUsercount()
    {
        String sql="select count(*) from LIBRARY where ID_TEMPLATE=2";
        int count=Integer.valueOf(getForValue(sql).toString());
        return count;
    }
    public int getCasecount()
    {
        String sql="select count(*) from LIBRARY where ID_TEMPLATE=3";
        int count=Integer.valueOf(getForValue(sql).toString());
        return count;
    }
    public int getPicturecount()
    {
        String sql="select count(*) from LIBRARY where ID_TEMPLATE=4";
        int count=Integer.valueOf(getForValue(sql).toString());
        return count;
    }


    public List<LibraryEntity> getMycollect(int id_user,int num1,int num2)
    {
        String sql="SELECT LIB_COLLECT.ID_USER,LIBRARY.ID_LIBRARY,LIBRARY.`NAME`,LIBRARY.ID_TEMPLATE,LIBRARY.COLLECT_NUM,LIBRARY.TIME,LIBRARY.MENTION FROM LIB_COLLECT INNER JOIN LIBRARY ON LIB_COLLECT.ID_LIBRARY = LIBRARY.ID_LIBRARY where LIB_COLLECT.ID_USER=? limit ?,?";
        List<LibraryEntity> librarycollect1=getForList(sql,id_user,num1,num2);
        return librarycollect1;
    }
    public int getMycollectcount(int id_user)
    {
        String sql="select count(*) from LIB_COLLECT where ID_USER=?";
        int count=Integer.valueOf(getForValue(sql,id_user).toString());
        return count;
    }

}
