package kh.s17.ac.member.model;



public class MemberVo {
	
	private String memberId;
	private String memberName;
	private String memberPassword;
	private String memberEmail;
	private String tradeName;
	private String businessRegistrationNumber;
	private String representative;
	private int membertype;
	
	public MemberVo() {
		super();
	}
	
	
	@Override
	public String toString() {
		return "MemberVo [memberId=" + memberId + ", memberName=" + memberName + ", memberPassword=" + memberPassword
				+ ", memberEmail=" + memberEmail + ", tradeName="
				+ tradeName + ", businessRegistrationNumber=" + businessRegistrationNumber + ", representative="
				+ representative + ", membertype=" + membertype + "]";
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

	public String getMemberPassword() {
		return memberPassword;
	}

	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}


	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	
	
}
