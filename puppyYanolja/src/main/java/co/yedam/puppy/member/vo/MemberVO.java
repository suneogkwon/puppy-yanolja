package co.yedam.puppy.member.vo;

public class MemberVO {
    private int no;
    private String id;
    private String password;
    private String name;
    private String email;
    private String hp;
    private int bookingCount;
    private String state;
    private int wishlistNo; // 1:1

    public MemberVO() {
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

    public int getBookingCount() {
        return bookingCount;
    }

    public void setBookingCount(int bookingCount) {
        this.bookingCount = bookingCount;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public int getWishlistNo() {
        return wishlistNo;
    }

    public void setWishlistNo(int wishlistNo) {
        this.wishlistNo = wishlistNo;
    }
}
