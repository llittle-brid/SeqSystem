package entity;

public class LibrarydiscussEntity {

    private int id_lib_discuss;
    private int id_user;
    private int id_library;
    private String content;

    public int getId_lib_discuss() {
        return id_lib_discuss;
    }

    public void setId_lib_discuss(int id_lib_discuss) {
        this.id_lib_discuss = id_lib_discuss;
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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
