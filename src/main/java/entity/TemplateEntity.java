package entity;

/**
 * Created by DELL on 2017/12/23.
 *
 * @author MJY
 */
public class TemplateEntity {
    int id_template;
    String title;
    String content;

    public int getId_template() {
        return id_template;
    }

    public void setId_template(int id_template) {
        this.id_template = id_template;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public TemplateEntity(int id_template, String title, String content) {
        this.id_template = id_template;
        this.title = title;
        this.content = content;
    }

    public TemplateEntity() {
    }
}
