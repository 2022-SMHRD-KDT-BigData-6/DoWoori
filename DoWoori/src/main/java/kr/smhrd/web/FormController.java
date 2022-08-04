package kr.smhrd.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.model.UserVO;
import kr.smhrd.service.FormService;

@Controller
public class FormController {

	//DB 쿼리문을 수행할 수 있는 인터페이스 생성
	@Autowired //★필수!! 자동으로 연결, 객체 생성하는 annotation
	private FormService service;
	
	
	@RequestMapping("/")
	public String login(HttpSession session) {
		
		return "login";
	}

	@RequestMapping("/basic.do")
	public String basic() {
		return "basic";
	}
	
	@RequestMapping("/login.do")
	public String signin(UserVO vo, HttpSession session) {
		UserVO uvo = service.login(vo);
		if(uvo == null) {			
			return "login";
		}else {
			session.setAttribute("uvo", uvo);
			return "redirect:/basic.do";
		}
		
	}
	
	@RequestMapping(value = "/join.do", method = RequestMethod.GET) 
	public String join() {
		return "join";
	}
	
	@RequestMapping(value = "/join.do", method = RequestMethod.POST) 
	public String signup(UserVO vo) {
		service.join(vo);
		return "redirect:/login.do";
	}

	@RequestMapping("/document.do")
	public String document() {
		return "document";
	}
	
	@RequestMapping("/company.do")
	public String company() {
		return "company";
	}
	
	@RequestMapping("/approve.do")
	public String approve() {
		return "approve";
	}

	

}
