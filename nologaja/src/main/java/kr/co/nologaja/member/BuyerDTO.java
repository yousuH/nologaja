package kr.co.nologaja.member;

import java.util.Date;

public class BuyerDTO {
	
	private String uid;
	private String upw;
	private String uemail;
	private String uname;
	private String upnb;
	private String ugrd;
	private String ugender;
	private Date wdate;
	
	public BuyerDTO() {
		
	}
	
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUpw() {
		return upw;
	}
	public void setUpw(String upw) {
		this.upw = upw;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpnb() {
		return upnb;
	}
	public void setUpnb(String upnb) {
		this.upnb = upnb;
	}
	public String getUgrd() {
		return ugrd;
	}
	public void setUgrd(String ugrd) {
		this.ugrd = ugrd;
	}
	public String getUgender() {
		return ugender;
	}
	public void setUgender(String ugender) {
		this.ugender = ugender;
	}
	public Date getWdate() {
		return wdate;
	}
	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}
	@Override
	public String toString() {
		return "BuyerDTO [uid=" + uid + ", upw=" + upw + ", uemail=" + uemail + ", uname=" + uname + ", upnb=" + upnb
				+ ", ugrd=" + ugrd + ", ugender=" + ugender + ", wdate=" + wdate + "]";
	}
	
	
	
	
}
