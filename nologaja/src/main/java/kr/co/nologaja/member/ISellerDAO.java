package kr.co.nologaja.member;

import java.util.List;

public interface ISellerDAO {

	public List<SellerDTO> list();
    public void insert(SellerDTO dto);
    public SellerDTO detail(String suid);
    public void delete(String suid);
    public void update(SellerDTO dto);
    public boolean checkpasswd(String suid, String supw);
    public int duplecateID(String suid);
    public boolean slogin(String suid , String supw);
	String read_sgrd(String suid, String supw);
	SellerDTO sfindid(SellerDTO dto);
	
}
