package co.yedam.puppy.shopItem.vo;

public class ShopItemVO {
	
	private int it_no;		 // 상품번호
	private int shop_no;     // 샵번호
	private String it_name;  // 상품명
	private String it_brand; // 상품브랜드
	private String it_model; // 상품 모델
	private String it_explanText; // 간단설명글
	private int cust_price;		 // 원래금액
	private int price;		 // 판매금액
	private int save_money;  // 적립금
	private int shipping_charge; // 배송비
	
	private String main_img; // 상품 메인 이미지 
	private String sub_img;  // 상품 상세 이미지
	private int review_no;   // 후기
}
