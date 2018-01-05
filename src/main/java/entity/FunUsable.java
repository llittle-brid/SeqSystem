package entity;

/**
 * Created by DELL on 2018/1/4.
 *
 * @author MJY
 */
public class FunUsable {
    private String usableName;
    private String usablePara;

    public String getUsableName() {
        return usableName;
    }

    public void setUsableName(String usableName) {
        this.usableName = usableName;
    }

    public String getUsablePara() {
        return usablePara;
    }

    public void setUsablePara(String usablePara) {
        this.usablePara = usablePara;
    }

    public FunUsable() {
    }

    public FunUsable(String usableName, String usablePara) {
        this.usableName = usableName;
        this.usablePara = usablePara;
    }
}
