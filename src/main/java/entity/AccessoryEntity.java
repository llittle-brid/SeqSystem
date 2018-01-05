package entity;

public class AccessoryEntity {
    int id_accessory;
    int id_pro_discuss;
    String filename;
    String path;

    public AccessoryEntity() {
    }

    public AccessoryEntity(int id_accessory, int id_pro_discuss, String filename, String path) {
        this.id_accessory = id_accessory;
        this.id_pro_discuss = id_pro_discuss;
        this.filename = filename;
        this.path = path;
    }

    public int getId_accessory() {
        return id_accessory;
    }

    public void setId_accessory(int id_accessory) {
        this.id_accessory = id_accessory;
    }

    public int getId_pro_discuss() {
        return id_pro_discuss;
    }

    public void setId_pro_discuss(int id_pro_discuss) {
        this.id_pro_discuss = id_pro_discuss;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }
}
