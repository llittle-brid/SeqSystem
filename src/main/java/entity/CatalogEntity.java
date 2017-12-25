package entity;

/**
 * Created by DELL on 2017/12/12.
 *
 * @author MJY
 */
public class CatalogEntity {
    private int id_catalog;
    private int id_template;
    private int id_document;
    private String content;
    private String title;
    private int first_index;
    private int second_index;
    private int third_index;
    private int fourth_index;

    public int getId_catalog() {
        return id_catalog;
    }

    public void setId_catalog(int id_catalog) {
        this.id_catalog = id_catalog;
    }

    public int getId_template() {
        return id_template;
    }

    public void setId_template(int id_template) {
        this.id_template = id_template;
    }

    public int getId_document() {
        return id_document;
    }

    public void setId_document(int id_document) {
        this.id_document = id_document;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getFirst_index() {
        return first_index;
    }

    public void setFirst_index(int first_index) {
        this.first_index = first_index;
    }

    public int getSecond_index() {
        return second_index;
    }

    public void setSecond_index(int second_index) {
        this.second_index = second_index;
    }

    public int getThird_index() {
        return third_index;
    }

    public void setThird_index(int third_index) {
        this.third_index = third_index;
    }

    public int getFourth_index() {
        return fourth_index;
    }

    public void setFourth_index(int fourth_index) {
        this.fourth_index = fourth_index;
    }

    public CatalogEntity(int id_catalog, int id_template, int id_document, String content, String title, int first_index, int second_index, int third_index, int fourth_index) {
        this.id_catalog = id_catalog;
        this.id_template = id_template;
        this.id_document = id_document;
        this.content = content;
        this.title = title;
        this.first_index = first_index;
        this.second_index = second_index;
        this.third_index = third_index;
        this.fourth_index = fourth_index;
    }

    public CatalogEntity() {
    }
}
