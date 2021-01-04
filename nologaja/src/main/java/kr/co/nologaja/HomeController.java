package kr.co.nologaja;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	public HomeController() {
		System.out.println("==HomeController()==");
	}
	
	/*
	@RequestMapping(value = "/home.do")
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/index.jsp");
		return mav;
		
		*/
	
	//http://localhost:9090/nologaja/home.do
	   @RequestMapping(value = "/home.do")
	   public ModelAndView home() {
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("index");
	      return mav;
	   }
		
	
}
