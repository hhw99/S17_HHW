package kh.s17.ac.member.model;

public class BusinessInfoVo {
	private String busno;
	private String busname;
	private String busceoname;
	private String buscertification;
	@Override
	public String toString() {
		return "BusinessInfoVo [busno=" + busno + ", busname=" + busname + ", busceoname=" + busceoname
				+ ", buscertification=" + buscertification + "]";
	}
	public String getBusno() {
		return busno;
	}
	public void setBusno(String busno) {
		this.busno = busno;
	}
	public String getBusname() {
		return busname;
	}
	public void setBusname(String busname) {
		this.busname = busname;
	}
	public String getBusceoname() {
		return busceoname;
	}
	public void setBusceoname(String busceoname) {
		this.busceoname = busceoname;
	}
	public String getBuscertification() {
		return buscertification;
	}
	public void setBuscertification(String buscertification) {
		this.buscertification = buscertification;
	}
}
