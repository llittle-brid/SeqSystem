package entity;

public class LibrarycollectEntity {

    private int id_lib_collect;
    private int id_user;
    private int id_library;

    public int getId_lib_collect() {
        return id_lib_collect;
    }

    public void setId_lib_collect(int id_lib_collect) {
        this.id_lib_collect = id_lib_collect;
    }

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public int getId_library() {
        return id_library;
    }

    public void setId_library(int id_library) {
        this.id_library = id_library;
    }

    public LibrarycollectEntity(int id_lib_collect, int id_user, int id_library) {
        this.id_lib_collect = id_lib_collect;
        this.id_user = id_user;
        this.id_library = id_library;
    }

    public LibrarycollectEntity() {
    }
}
