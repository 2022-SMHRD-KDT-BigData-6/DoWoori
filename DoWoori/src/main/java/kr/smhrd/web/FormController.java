package kr.smhrd.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



import kr.smhrd.service.BoardService;

@Controller
public class FormController {

	//DB 쿼리문을 수행할 수 있는 인터페이스 생성
	@Autowired //★필수!! 자동으로 연결, 객체 생성하는 annotation
	private BoardService service;
	
	// 메소드 : public String 메소드명()
	@RequestMapping("/")
	// Handler Mapping --> basic.do 라는 요청 url과 basic method를 연결!
	public String basic(Model model) {
		return "basic";  
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
	
	@RequestMapping("/login.do")
	public String login() {
		return "login()";
	}

}
