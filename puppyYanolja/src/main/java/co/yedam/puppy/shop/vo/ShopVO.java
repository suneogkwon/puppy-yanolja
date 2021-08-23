package co.yedam.puppy.shop.vo;

public class ShopVO {

	private int no;
	private String companyOwner; // 대표자명
	private String companyName;  // 상호명
	private String saupjaNo;	  // 사업자번호
	private String companyTel;	  // 사업장 전화번호
	private String companyZip;   // 사업장 우편번호
	private String companyAddr;  // 사업장 주소
	private String bankName; 	  // 은행이름
	private String bankNumber;   // 계좌번호
	private String bankOwnerName; // 예금주

	private int memberNo;        // 멤버번호
	private int categoryNo;	   // 운영 카테고리 ex) 1. 호텔 2. 유치원 3. 애견카페.....
	private int locationNo;       // 지역 번호 ex) 1. 서울 2. 경기도 .....
	private String mainFile;	   // 메인이미지
	private String subFile;		   // 서브이미지
	
	
	public ShopVO() {
		// TODO Auto-generated constructor stub
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getCompanyOwner() {
		return companyOwner;
	}
	public void setCompanyOwner(String companyOwner) {
		this.companyOwner = companyOwner;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getSaupjaNo() {
		return saupjaNo;
	}
	public void setSaupjaNo(String saupjaNo) {
		this.saupjaNo = saupjaNo;
	}
	public String getCompanyTel() {
		return companyTel;
	}
	public void setCompanyTel(String companyTel) {
		this.companyTel = companyTel;
	}
	public String getCompanyZip() {
		return companyZip;
	}
	public void setCompanyZip(String companyZip) {
		this.companyZip = companyZip;
	}
	public String getCompanyAddr() {
		return companyAddr;
	}
	public void setCompanyAddr(String companyAddr) {
		this.companyAddr = companyAddr;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getBankNumber() {
		return bankNumber;
	}
	public void setBankNumber(String bankNumber) {
		this.bankNumber = bankNumber;
	}
	public String getBankOwnerName() {
		return bankOwnerName;
	}
	public void setBankOwnerName(String bankOwnerName) {
		this.bankOwnerName = bankOwnerName;
	}
	
	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	public int getLocationNo() {
		return locationNo;
	}
	public void setLocationNo(int locationNo) {
		this.locationNo = locationNo;
	}
	public String getMainFile() {
		return mainFile;
	}
	public void setMainFile(String mainFile) {
		this.mainFile = mainFile;
	}
	public String getSubFile() {
		return subFile;
	}
	public void setSubFile(String subFile) {
		this.subFile = subFile;
	}
	


}
