package kr.co.nologaja.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class SellerDAO implements ISellerDAO{

	@Inject //<-사용자가 직접 만들지 않고 스프링에서 생성해서 주입을 시킴
	SqlSession sqlSession;
	
	@Override
	public List<SellerDTO> list() {
		return sqlSession.selectList("member.slist");
	}

	@Override
	public void insert(SellerDTO dto) {
		sqlSession.insert("member.sinsert",dto);
		
	}

	@Override
	public SellerDTO detail(String suid) {
		return sqlSession.selectOne("member.sdetail", suid);
	}

	@Override
	public void delete(String suid) {
		sqlSession.delete("member.sdelete",suid);
		
	}

	@Override
	public void update(SellerDTO dto) {
		sqlSession.update("member.supdate", dto);
		
	}

	@Override
	public boolean checkpasswd(String suid, String supw) {
		boolean result=false;
		//mapper.xml에 전달한 값이 2개 ㅇ상인 경우 주로 DTO또는 MAP으로 전달
		Map<String, String> map = new HashMap<String, String>();
		map.put("one", suid);
		map.put("two", supw);
		
		int count = sqlSession.selectOne("member.scheck_passwd", map);
		if(count==1) result = true;
		
		return result;
	}

	@Override
	public int duplecateID(String suid) {
		int count = sqlSession.selectOne("member.sduplicateID", suid);
		return count;
	}
	
	//로그인
	@Override
	public boolean slogin(String suid, String supw) {
		boolean result=false;
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("one", suid);
		map.put("two", supw);
		
		int count = sqlSession.selectOne("member.slogin", map);
		if(count==1) {
			result = true;	
		}
		return result;
	}
	
	//등급가져오기
	@Override
	public String read_sgrd(String suid, String supw) {
		String sgrd="";
		
		Map<String, String> map1 = new HashMap<String, String>();
		map1.put("sgrd_suid", suid);
		map1.put("sgrd_supw", supw);
		sgrd = sqlSession.selectOne("member.read_sgrd", map1);
		
		return sgrd;
	}

	//아이디 찾기
	@Override
	public SellerDTO sfindid(SellerDTO dto) {
		return sqlSession.selectOne("member.sfindid", dto);
	}

}
