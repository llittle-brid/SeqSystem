package entity;

public class PictureStructureEntity {
    private String mention;
    private String src;

    public PictureStructureEntity(String mention, String src) {
        this.mention = mention;
        this.src = src;
    }

    public PictureStructureEntity() {
    }

    public String getMention() {
        return mention;
    }

    public void setMention(String mention) {
        this.mention = mention;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }
}
