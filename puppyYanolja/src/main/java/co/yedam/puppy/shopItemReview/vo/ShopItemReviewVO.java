package co.yedam.puppy.shopItemReview.vo;

import java.sql.Date;

public class ShopItemReviewVO {
	
	private int no;			
	private int shop_no;	// shop 번호
	private int item_no;	// 상품번호
	private String title;   // 리뷰제목
	private double score;	// 평점
	private String content; // 리뷰 내용
	private Date writer_dateTime;  // 작성시간
	
	

}
