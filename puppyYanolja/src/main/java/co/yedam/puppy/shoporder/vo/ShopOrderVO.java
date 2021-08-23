package co.yedam.puppy.shoporder.vo;

import java.sql.Date;

public class ShopOrderVO {

	private int odNo;
	private int shopNo;			//업체 넘버
	private int memberNo;			//회원 넘버
	private String odEmail;		//주문자 이메일
	private String odDepositName; //예금자명
	private String odMemo;			//주문 메시지
	private int odPrice;			//가격
	private Date odCheckoutDate;  //체크아웃 날짜
	private Date odCheckinDate;	//체크인 날짜
	private Date odTime;			//주문시간
	public int getOdNo() {
		return odNo;
	}
	public void setOdNo(int odNo) {
		this.odNo = odNo;
	}
	public int getShopNo() {
		return shopNo;
	}
	public void setShopNo(int shopNo) {
		this.shopNo = shopNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getOdEmail() {
		return odEmail;
	}
	public void setOdEmail(String odEmail) {
		this.odEmail = odEmail;
	}
	public String getOdDepositName() {
		return odDepositName;
	}
	public void setOdDepositName(String odDepositName) {
		this.odDepositName = odDepositName;
	}
	public String getOdMemo() {
		return odMemo;
	}
	public void setOdMemo(String odMemo) {
		this.odMemo = odMemo;
	}
	public int getOdPrice() {
		return odPrice;
	}
	public void setOdPrice(int odPrice) {
		this.odPrice = odPrice;
	}
	public Date getOdCheckoutDate() {
		return odCheckoutDate;
	}
	public void setOdCheckoutDate(Date odCheckoutDate) {
		this.odCheckoutDate = odCheckoutDate;
	}
	public Date getOdCheckinDate() {
		return odCheckinDate;
	}
	public void setOdCheckinDate(Date odCheckinDate) {
		this.odCheckinDate = odCheckinDate;
	}
	public Date getOdTime() {
		return odTime;
	}
	public void setOdTime(Date odTime) {
		this.odTime = odTime;
	}
	
	
}