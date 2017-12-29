package entity;

import java.sql.Date;

public class DocumentEntity {
    int id_document;
    String document_name;
    int id_project;
    double version;
    Date date;
    int id_user;

    public DocumentEntity(int id_document, String document_name, int id_project, double version, Date date, int id_user) {
        this.id_document = id_document;
        this.document_name = document_name;
        this.id_project = id_project;
        this.version = version;
        this.date = date;
        this.id_user = id_user;
    }

    public DocumentEntity() {
    }

    public int getId_document() {
        return id_document;
    }

    public void setId_document(int id_document) {
        this.id_document = id_document;
    }

    public String getDocument_name() {
        return document_name;
    }

    public void setDocument_name(String document_name) {
        this.document_name = document_name;
    }

    public int getId_project() {
        return id_project;
    }

    public void setId_project(int id_project) {
        this.id_project = id_project;
    }

    public double getVersion() {
        return version;
    }

    public void setVersion(double version) {
        this.version = version;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }
}
