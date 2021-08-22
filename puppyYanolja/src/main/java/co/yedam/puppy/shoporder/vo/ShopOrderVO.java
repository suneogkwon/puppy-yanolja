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
}