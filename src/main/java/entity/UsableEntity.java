package entity;

/**
 * Created by DELL on 2018/1/4.
 *
 * @author MJY
 */
public class UsableEntity {
    private  int id_usable;
    private String name;
    private String rang;
    private String solution;
    private String example;

    public int getId_usable() {
        return id_usable;
    }

    public void setId_usable(int id_usable) {
        this.id_usable = id_usable;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRang() {
        return rang;
    }

    public void setRang(String rang) {
        this.rang = rang;
    }

    public String getSolution() {
        return solution;
    }

    public void setSolution(String solution) {
        this.solution = solution;
    }

    public String getExample() {
        return example;
    }

    public void setExample(String example) {
        this.example = example;
    }

    public UsableEntity(int id_usable, String name, String rang, String solution, String example) {
        this.id_usable = id_usable;
        this.name = name;
        this.rang = rang;
        this.solution = solution;
        this.example = example;
    }

    public UsableEntity() {
    }
}
