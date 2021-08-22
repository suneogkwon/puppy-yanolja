package co.yedam.puppy.booking.vo;


public class BookingVO {
	
	private int no;
	private String companyOwner;
	private String companyName;
	private String saupjaNo;
	private String companyTel;
	private String companyZip;
	private String companyAddr;
	private int bankUse;
	private String bankAccount;
	private int partnerNo;	// N:1
	private int categoryNo;
	private int locationNo;
	
	public BookingVO() {}

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

	public int getBankUse() {
		return bankUse;
	}

	public void setBankUse(int bankUse) {
		this.bankUse = bankUse;
	}

	public String getBankAccount() {
		return bankAccount;
	}

	public void setBankAccount(String bankAccount) {
		this.bankAccount = bankAccount;
	}

	public int getPartnerNo() {
		return partnerNo;
	}

	public void setPartnerNo(int partnerNo) {
		this.partnerNo = partnerNo;
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
	

}
