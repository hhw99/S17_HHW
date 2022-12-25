package kh.s17.ac.mypage.model;

public class MypageVo {
	
	private String field;
	private String memberInformation;
	private String memberId;
	private String modifyingInformation;
	
	public MypageVo() {
		super();
	}
	
	@Override
	public String toString() {
		return "MypageVo [field=" + field + ", memberInformation=" + memberInformation + ", memberId=" + memberId
				+ ",, modifyingInformation=" + modifyingInformation + "]";
	}


	public String getField() {
		return field;
	}


	public void setField(String field) {
		this.field = field;
	}


	public String getMemberInformation() {
		return memberInformation;
	}


	public void setMemberInformation(String memberInformation) {
		this.memberInformation = memberInformation;
	}


	public String getMemberId() {
		return memberId;
	}


	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}



	public String getModifyingInformation() {
		return modifyingInformation;
	}


	public void setModifyingInformation(String modifyingInformation) {
		this.modifyingInformation = modifyingInformation;
	}
	
	
}
