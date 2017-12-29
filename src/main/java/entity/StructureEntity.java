package entity;

import java.util.List;

public class StructureEntity {
    private int id_structure;
    private int id_library;

    public StructureEntity(int id_structure, int id_library, String content) {
        this.id_structure = id_structure;
        this.id_library = id_library;
        this.content = content;
    }

    public StructureEntity() {
    }

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
