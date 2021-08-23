package co.yedam.puppy.partner.vo;

public class PartnerVO {
    private int no;
    private String id;
    private String password;
    private String name;
    private String email;
    private String hp;
    private String tel;
    private int sellingCount;
    private String state;

    public PartnerVO() {
    }

    public int getNo() {
        return no;
    }

    public void setNo(int no) {
        this.no = no;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getHp() {
        return hp;
    }

    public void setHp(String hp) {
        this.hp = hp;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public int getSellingCount() {
        return sellingCount;
    }

    public void setSellingCount(int sellingCount) {
        this.sellingCount = sellingCount;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
