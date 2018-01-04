package entity;

import java.util.List;

/**
 * Created by DELL on 2018/1/4.
 *
 * @author MJY
 */
public class FunStructureEntity {
    private String funName;
    private int priority;
    //参与用户根据表来生成
    private String describe;
    private List<FunRole> funRoleList;
    private List<FunUsable> funUsableList;
    private String in;
    private String out;
    private String basic;
    private String alternative;

    public String getFunName() {
        return funName;
    }

    public void setFunName(String funName) {
        this.funName = funName;
    }

    public int getPriority() {
        return priority;
    }

    public void setPriority(int priority) {
        this.priority = priority;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public List<FunRole> getFunRoleList() {
        return funRoleList;
    }

    public void setFunRoleList(List<FunRole> funRoleList) {
        this.funRoleList = funRoleList;
    }

    public List<FunUsable> getFunUsableList() {
        return funUsableList;
    }

    public void setFunUsableList(List<FunUsable> funUsableList) {
        this.funUsableList = funUsableList;
    }

    public String getIn() {
        return in;
    }

    public void setIn(String in) {
        this.in = in;
    }

    public String getOut() {
        return out;
    }

    public void setOut(String out) {
        this.out = out;
    }

    public String getBasic() {
        return basic;
    }

    public void setBasic(String basic) {
        this.basic = basic;
    }

    public String getAlternative() {
        return alternative;
    }

    public void setAlternative(String alternative) {
        this.alternative = alternative;
    }

    public FunStructureEntity(String funName, int priority, String describe, List<FunRole> funRoleList, List<FunUsable> funUsableList, String in, String out, String basic, String alternative) {
        this.funName = funName;
        this.priority = priority;
        this.describe = describe;
        this.funRoleList = funRoleList;
        this.funUsableList = funUsableList;
        this.in = in;
        this.out = out;
        this.basic = basic;
        this.alternative = alternative;
    }

    public FunStructureEntity() {
    }
}
