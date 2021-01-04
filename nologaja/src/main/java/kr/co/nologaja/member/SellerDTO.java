package kr.co.nologaja.member;

import java.util.Date;

public class SellerDTO {
	private String suid;
	private String supw;
	private String uemail;
	private String uname;
	private String upnb;
	private String ugrd;
	private Date wdate;
	private String bsnb;
	private String zipcode;
	private String bsaddr1;
	private String bsaddr2;
	private String bspnb;
	
	public SellerDTO() {
		
	}

	public String getSuid() {
		return suid;
	}

	public void setSuid(String suid) {
		this.suid = suid;
	}

	public String getSupw() {
		return supw;
	}

	public void setSupw(String supw) {
		this.supw = supw;
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

	public Date getWdate() {
		return wdate;
	}

	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}

	public String getBsnb() {
		return bsnb;
	}

	public void setBsnb(String bsnb) {
		this.bsnb = bsnb;
	}

	public String getBsaddr1() {
		return bsaddr1;
	}

	public void setBsaddr1(String bsaddr1) {
		this.bsaddr1 = bsaddr1;
	}

	public String getBsaddr2() {
		return bsaddr2;
	}

	public void setBsaddr2(String bsaddr2) {
		this.bsaddr2 = bsaddr2;
	}

	public String getBspnb() {
		return bspnb;
	}

	public void setBspnb(String bspnb) {
		this.bspnb = bspnb;
	}
	

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	@Override
	public String toString() {
		return "SellerDTO [suid=" + suid + ", supw=" + supw + ", uemail=" + uemail + ", uname=" + uname + ", upnb="
				+ upnb + ", ugrd=" + ugrd + ", wdate=" + wdate + ", bsnb=" + bsnb + ", zipcode=" + zipcode
				+ ", bsaddr1=" + bsaddr1 + ", bsaddr2=" + bsaddr2 + ", bspnb=" + bspnb + "]";
	}

	
	
}
