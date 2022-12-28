package kh.s17.ac.Cart.model;

public class CartVo {

	private int amount;
	private String pID;
	private String memberId;
// 화면구성을 위해
	private String pName;
	private int price;
	private String pimage;

	public CartVo() {
		super();
	}

	public CartVo(int amount, String pID, String memberId, String pName, int price, String pimage) {
		super();
		this.amount = amount;
		this.pID = pID;
		this.memberId = memberId;
		this.pName = pName;
		this.price = price;
		this.pimage = pimage;
	}

	@Override
	public String toString() {
		return "CartVo [amount=" + amount + ", pID=" + pID + ", memberId=" + memberId + ", pName=" + pName + ", price="
				+ price + ", pimage=" + pimage + "]";
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getpID() {
		return pID;
	}

	public void setpID(String pID) {
		this.pID = pID;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getPimage() {
		return pimage;
	}

	public void setPimage(String pimage) {
		this.pimage = pimage;
	}

	

}
