package entity;

import java.util.List;

public class StructureEntity extends java.lang.Object{
    private int id_structure;
    private int id_library;
    private String content;

    public int getId_structure() {
        return id_structure;
    }

    public void setId_structure(int id_structure) {
        this.id_structure = id_structure;
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
