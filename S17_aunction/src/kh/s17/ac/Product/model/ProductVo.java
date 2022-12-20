package kh.s17.ac.Product.model;

public class ProductVo {

	private String pID;
	private String pName;
	private int pPrice;
	private String pDescription;
	private String pCompany;
	private int pStock;

	public ProductVo() {
		super();
	}

	@Override
	public String toString() {
		return "ProductVo [pID=" + pID + ", pName=" + pName + ", pPrice=" + pPrice + ", pDescription=" + pDescription
				+ ", pCompany=" + pCompany + ", pStock=" + pStock + "]";
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

}
