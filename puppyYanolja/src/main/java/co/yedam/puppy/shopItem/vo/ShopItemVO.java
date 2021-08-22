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
	
	public ShopItemVO() {
		// TODO Auto-generated constructor stub
	}
	
	
	public int getItNo() {
		return itNo;
	}
	public void setItNo(int itNo) {
		this.itNo = itNo;
	}
	public int getShopNo() {
		return shopNo;
	}
	public void setShopNo(int shopNo) {
		this.shopNo = shopNo;
	}
	public String getItName() {
		return itName;
	}
	public void setItName(String itName) {
		this.itName = itName;
	}
	public String getItBrand() {
		return itBrand;
	}
	public void setItBrand(String itBrand) {
		this.itBrand = itBrand;
	}
	public String getItCategory() {
		return itCategory;
	}
	public void setItCategory(String itCategory) {
		this.itCategory = itCategory;
	}
	public String getItExplanText() {
		return itExplanText;
	}
	public void setItExplanText(String itExplanText) {
		this.itExplanText = itExplanText;
	}
	public int getCustPrice() {
		return custPrice;
	}
	public void setCustPrice(int custPrice) {
		this.custPrice = custPrice;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getSaveMoney() {
		return saveMoney;
	}
	public void setSaveMoney(int saveMoney) {
		this.saveMoney = saveMoney;
	}
	public int getShippingCharge() {
		return shippingCharge;
	}
	public void setShippingCharge(int shippingCharge) {
		this.shippingCharge = shippingCharge;
	}
	public String getMainImg() {
		return mainImg;
	}
	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
	}
	public String getSubImg() {
		return subImg;
	}
	public void setSubImg(String subImg) {
		this.subImg = subImg;
	}

	
	
	
}
