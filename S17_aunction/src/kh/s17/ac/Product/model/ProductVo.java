package kh.s17.ac.Product.model;

public class ProductVo {
//	PID          NOT NULL VARCHAR2(30)   
//	PNAME        NOT NULL VARCHAR2(300)  
//	PPRICE       NOT NULL NUMBER(10)     
//	PDESCRIPTION          VARCHAR2(4000) 
//	PCOMPANY              VARCHAR2(300)  
//	PSTOCK                NUMBER         
//	PIMAGE                VARCHAR2(500)  

	private String pID;
	private String pName;
	private int pPrice;
	private String pDescription;
	private String pCompany;
	private int pStock;
	private String pimage;

	public ProductVo() {
		super();
	}

	@Override
	public String toString() {
		return "ProductVo [pID=" + pID + ", pName=" + pName + ", pPrice=" + pPrice + ", pDescription=" + pDescription
				+ ", pCompany=" + pCompany + ", pStock=" + pStock + ", pimage=" + pimage + "]";
	}

	public String getpID() {
		return pID;
	}

	public void setpID(String pID) {
		this.pID = pID;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public int getpPrice() {
		return pPrice;
	}

	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}

	public String getpDescription() {
		return pDescription;
	}

	public void setpDescription(String pDescription) {
		this.pDescription = pDescription;
	}

	public String getpCompany() {
		return pCompany;
	}

	public void setpCompany(String pCompany) {
		this.pCompany = pCompany;
	}

	public int getpStock() {
		return pStock;
	}

	public void setpStock(int pStock) {
		this.pStock = pStock;
	}

	public String getPimage() {
		return pimage;
	}

	public void setPimage(String pimage) {
		this.pimage = pimage;
	}


}
