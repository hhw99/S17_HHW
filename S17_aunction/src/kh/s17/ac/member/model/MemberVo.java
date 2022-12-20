package kh.s17.ac.member.model;



public class MemberVo {
	
	private String memberId;
	private String memberName;
	private int memberPassward;
	private int memberPhonenumber;
	private String memberEmail;
	private String tradeName;
	private String businessRegistrationNumber;
	private String representative;
	private int membertype;
	
	public MemberVo() {
		super();
	}
	
	

	public String getTradeName() {
		return tradeName;
	}



	public void setTradeName(String tradeName) {
		this.tradeName = tradeName;
	}



	public String getBusinessRegistrationNumber() {
		return businessRegistrationNumber;
	}



	public void setBusinessRegistrationNumber(String businessRegistrationNumber) {
		this.businessRegistrationNumber = businessRegistrationNumber;
	}



	public String getRepresentative() {
		return representative;
	}



	public void setRepresentative(String representative) {
		this.representative = representative;
	}



	public int getMembertype() {
		return membertype;
	}



	public void setMembertype(int membertype) {
		this.membertype = membertype;
	}



	@Override
	public String toString() {
		return "MemberVo [memberId=" + memberId + ", memberName=" + memberName + ", memberPassward=" + memberPassward
				+ ", memberPhonenumber=" + memberPhonenumber + ", memberEmail=" + memberEmail + ", tradeName="
				+ tradeName + ", businessRegistrationNumber=" + businessRegistrationNumber + ", representative="
				+ representative + ", membertype=" + membertype + "]";
	}



	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public int getMemberPassward() {
		return memberPassward;
	}

	public void setMemberPassward(int memberPassward) {
		this.memberPassward = memberPassward;
	}

	public int getMemberPhonenumber() {
		return memberPhonenumber;
	}

	public void setMemberPhonenumber(int memberPhonenumber) {
		this.memberPhonenumber = memberPhonenumber;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	
	
}
