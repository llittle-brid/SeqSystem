package entity;

import java.util.List;

public class ProjectEntity {
    private int id_project;
    private String proName;
    private String docName;
    private String orgName;
    private String intro;
    private List<String> members;

    public int getId_project() {
        return id_project;
    }

    public void setId_project(int id_project) {
        this.id_project = id_project;
    }

    public String getProName() {
        return proName;
    }

    public void setProName(String proName) {
        this.proName = proName;
    }

    public String getDocName() {
        return docName;
    }

    public void setDocName(String docName) {
        this.docName = docName;
    }

    public String getOrgName() {
        return orgName;
    }

    public void setOrgName(String orgName) {
        this.orgName = orgName;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public List<String> getMembers() {
        return members;
    }

    public void setMembers(List<String> members) {
        this.members = members;
    }

    public ProjectEntity() {
    }

    public ProjectEntity(String proName, String docName, String orgName, String intro) {
        this.proName = proName;
        this.docName = docName;
        this.orgName = orgName;
        this.intro = intro;
    }
}
