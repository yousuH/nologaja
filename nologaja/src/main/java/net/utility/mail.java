package net.utility;


import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.nologaja.member.BuyerDTO;
import kr.co.nologaja.member.SellerDTO;

@Controller
public class mail {
	@Autowired
	private JavaMailSender mailSender;

	public mail() {
		System.out.println("===mail() 객체===");
	}

	// mailSending 코드
	@RequestMapping(value = "mailSending.do")
	public String mailSending(BuyerDTO dto, BuyerDTO result) {

		try {

			String setfrom = "nologaja@gmail.com";
			String tomail = dto.getUemail(); // 받는 사람 이메일
			String title = "[Nologaja] 아이디 비밀번호입니다."; // 제목
			String content = ""; // 내용

			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
			messageHelper.setTo(tomail); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content); // 메일 내용

			String text = "아이디 : " + (String) result.getUid();
			text += "<br>비밀번호 : " + (String) result.getUpw();
			messageHelper.setText(text, true);

			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}

		return "member/findidpwresult";
	}

	
	
	
	@RequestMapping(value = "mailSending2.do")
	public String mailSending2(SellerDTO dto, SellerDTO result) {

		try {

			String setfrom = "nologaja@gmail.com";
			String tomail = dto.getUemail(); // 받는 사람 이메일
			String title = "[Nologaja] 아이디 비밀번호입니다."; // 제목
			String content = ""; // 내용

			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
			messageHelper.setTo(tomail); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content); // 메일 내용

			String text = "아이디 : " + (String) result.getSuid();
			text += "<br>비밀번호 : " + (String) result.getSupw();
			messageHelper.setText(text, true);

			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}

		return "member/findidpwresult";
	}
	
	
	
	
	
}
