package co.yedam.puppy.shoporder.vo;

import java.sql.Date;

public class ShopOrderVO {

	private int no;
	private int shop_no;			//업체 넘버
	private int member_no;			//회원 넘버
	private String od_email;		//주문자 이메일
	private String od_deposit_name; //예금자명
	private String od_memo;			//주문 메시지
	private int od_price;			//가격
	private Date od_checkout_date;  //체크아웃 날짜
	private Date od_checkin_date;	//체크인 날짜
	private Date od_time;			//주문시간
}