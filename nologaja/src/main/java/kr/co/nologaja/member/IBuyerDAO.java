package kr.co.nologaja.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import kr.co.nologaja.member.*;

public interface IBuyerDAO {
	public List<BuyerDTO> list();
    public void insert(BuyerDTO dto);
    public BuyerDTO detail(String uid);
    public void delete(String uid);
    public void update(BuyerDTO dto);
    public boolean checkpasswd(String uid, String upw);
    public int duplecateID(String uid);
	public boolean blogin(String uid , String upw);
	String read_bgrd(String uid, String upw);
	BuyerDTO bfindid(BuyerDTO dto);

}
