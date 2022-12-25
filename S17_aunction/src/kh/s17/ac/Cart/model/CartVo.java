package kh.s17.ac.Cart.model;

public class CartVo {

	private String pName;
	private int amount;
	private int price;
	private String pID;
	private String memberId;


	public CartVo() {
		super();
	}
	@Override
	public String toString() {
		return "CartVo [pName=" + pName + ", amount=" + amount + ", price=" + price + ", pID=" + pID + ", memberId="
				+ memberId + "]";
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
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

	

}
