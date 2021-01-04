package kr.co.nologaja.member;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import net.utility.mail;

@Controller
public class MemberCont {
	
	@Inject
	BuyerDAO bdao;
	
	@Inject
	SellerDAO sdao;
	
	@Inject
	mail mailSending;
	
	@Inject
	mail mailSending2;
	
	public MemberCont() {
		System.out.println("==MemberCont()==");
	}
	
	//회원가입 페이지(배너 상의 회원가입 버튼)
	@RequestMapping(value = "/memberform.do")
	   public ModelAndView form() {
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("member/memberform");
	      return mav;
	   }
	
	//회원가입 구매자 dto
	@RequestMapping("/buyerjoin.do")
	public String insert(@ModelAttribute BuyerDTO dto) {
		bdao.insert(dto);
		return "member/login";
	}//insert() end
	

	//회원가입 판매자 dto
	@RequestMapping("/sellerjoin.do")
	public String insert(@ModelAttribute SellerDTO dto) {
		sdao.insert(dto);
		return "member/login";
	}//insert() end

//---------------------------------------------------------------------------------------------------------------------------------------------
	//로그인페이지로 이동
	@RequestMapping("/login.do")
	   public ModelAndView login() {
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("member/login");
	      return mav;
   }
	

	//구매자 로그인처리
	@RequestMapping("/blogin.do")
	public ModelAndView blogin(String uid, String upw, HttpServletRequest request) {
		boolean result = bdao.blogin(uid, upw);
		ModelAndView mav = new ModelAndView();
		if(result==true) {
			String ugrd=bdao.read_bgrd(uid, upw);
			mav.setViewName("index");
			HttpSession session=request.getSession();
			session.setAttribute("uid", uid);
			session.setAttribute("ugrd", ugrd);
			session.setMaxInactiveInterval(20*60*24);
		}else {
			mav.setViewName("member/login");
		}
		return mav;
	}//blogin() end
	
	
	//판매자 로그인처리
	@RequestMapping("/slogin.do")
	public ModelAndView slogin(String suid, String supw, HttpServletRequest request) {
		boolean result = sdao.slogin(suid, supw);
		ModelAndView mav = new ModelAndView();
		if(result==true) {
			String ugrd=sdao.read_sgrd(suid, supw);
			mav.setViewName("index");
			HttpSession session=request.getSession();
			session.setAttribute("suid", suid);
			session.setAttribute("ugrd", ugrd);
			session.setMaxInactiveInterval(20*60*24);
		}else {
			mav.setViewName("member/login");
		}
		return mav;
	}//slogin() end
	
	//로그아웃
	@RequestMapping("/logout.do")
    public ModelAndView logout(HttpServletRequest request) {
		HttpSession session=request.getSession();
		session.removeAttribute("suid");
		session.removeAttribute("uid");
		ModelAndView mav = new ModelAndView();
	    mav.setViewName("member/login");
	    return mav;
	}
	
//------------------------------------------------------------------------------------------------------------------------------
	
	// 아이디 비밀번호 찾기 페이지
	@RequestMapping(value = "/findidpw.do")
	public ModelAndView findidpw() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/findidpw");
		return mav;
	}

	// 아이디 비밀번호 찾기 결과(일반회원)
	@RequestMapping(value = "/buyerfindid.do")
	public ModelAndView buyerfindid(@ModelAttribute BuyerDTO dto) {
	      ModelAndView mav = new ModelAndView();
	      BuyerDTO result = bdao.bfindid(dto);
	      
	      if(result==null) {
	    	  mav.addObject("msg2", "<p>일치하는 계정을 찾을 수 없습니다.</p>");
	    	  mav.setViewName("member/buyerfindid");
	      }else { 
	    	  mailSending.mailSending(dto, result);
	    	  
	    	  mav.addObject("msg1", "<table><tr><th>이름</th><td>"+dto.getUname()+"</td></tr><tr><th>이메일</th><td>"+dto.getUemail()+"</td></tr></table>");
	    	  mav.addObject("msg2", "<p>"+ dto.getUemail() +"로 아이디와 비밀번호를 전송하였습니다.</p>");
	    	  mav.setViewName("member/findidpwresult");
	    	  mav.addObject("dto", dto);
	      }
	      return mav;
	}
	
	// 아이디 비밀번호 찾기 결과(판매회원)
		@RequestMapping(value = "/sellerfindid.do")
	public ModelAndView sellerfindid(@ModelAttribute SellerDTO dto) {
	      ModelAndView mav = new ModelAndView();
	      SellerDTO result = sdao.sfindid(dto);
	      
	      if(result==null) {
	    	  mav.addObject("msg2", "<p>일치하는 계정을 찾을 수 없습니다.</p>");
	    	  mav.setViewName("member/findidpwresult");
	      }else { 
	    	  mailSending.mailSending2(dto, result);
	    	  
	    	  mav.addObject("msg1", "<table><tr><th>이름</th><td>"+dto.getUname()+"</td></tr><tr><th>이메일</th><td>"+dto.getUemail()+"</td></tr></table>");
	    	  mav.addObject("msg2", "<p>"+ dto.getUemail() +"로 아이디와 비밀번호를 전송하였습니다.</p>");
	    	  mav.setViewName("member/findidpwresult");
	    	  mav.addObject("dto", dto);
	      }
	      return mav;
	}

//----------------------------------------------------------------------------------------------------------------



}//class end
