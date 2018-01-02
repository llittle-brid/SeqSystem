package entity;

import dao.LibraryDao;
import daoImp.LibraryDaoImp;
import daoImp.LibrarydiscussDaoImp;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

public class LiDicussE {
    private LibrarydiscussEntity librarydiscussEntity;
    private long state;

    public LiDicussE() {
    }

    public LiDicussE(LibrarydiscussEntity librarydiscussEntity, long state) {
        this.librarydiscussEntity = librarydiscussEntity;
        this.state = state;
    }

    public LibrarydiscussEntity getLibrarydiscussEntity() {
        return librarydiscussEntity;
    }

    public void setLibrarydiscussEntity(LibrarydiscussEntity librarydiscussEntity) {
        this.librarydiscussEntity = librarydiscussEntity;
    }

    public long getState() {
        return state;
    }

    public void setState(long state) {
        this.state = state;
    }
}
