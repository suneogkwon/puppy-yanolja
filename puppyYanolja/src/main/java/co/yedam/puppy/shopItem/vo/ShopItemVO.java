package co.yedam.puppy.shopItem.vo;

public class ShopItemVO {
	
	private int itNo;		 // 상품번호
	private int shopNo;     // 샵번호
	private String itName;  // 상품명
	private String itBrand; // 상품브랜드
	private String itCategory; // 상품 분류
	private String itExplanText; // 간단설명글
	private int custPrice;		 // 원래금액
	private int price;		 // 판매금액
	private int saveMoney;  // 적립금
	private int shippingCharge; // 배송비
	
	private String mainImg; // 상품 메인 이미지 
	private String subImg;  // 상품 상세 이미지
	private int reviewNo;   // 후기
}
