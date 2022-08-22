package kr.smhrd.web;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.GsonFactoryBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.JsonParser.NumberType;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonPrimitive;

import kr.smhrd.model.FormVO;
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

	UserVO vou = null;
	String userId = "";
	@RequestMapping("/login.do")
	public void signin(UserVO vo, HttpSession session, HttpServletResponse response) {
		UserVO uvo = service.login(vo);
		
		if(uvo == null) {
	    	try {
	    		response.getWriter().write("loginFail");
	    	}catch(IOException e){
	    		e.printStackTrace();
	    	}
		}else {
			session.setAttribute("uvo", uvo);
			vou = (UserVO) session.getAttribute("uvo");
			userId = vou.getId();
		}

	}
	
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.removeAttribute("id");
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/join.do", method = RequestMethod.GET) 
	public String join() {
		return "join";
	}
	
	@RequestMapping(value = "/join.do", method = RequestMethod.POST) 
	public void signup(UserVO vo) {
		service.join(vo);
	}

	
	@RequestMapping("/company.do")
	public String company() {
		return "company";
	}
	
	@RequestMapping("/approve.do")
	public String approve() {
		return "approve";
	}
	
	@RequestMapping("/document.do")
	public String document(String userId, Model model) {
		return "document";
	}

	@RequestMapping(value = "/formInsert.do", method=RequestMethod.GET)
	public String formInsert() {
		return "formInsert";
	}
	
	@RequestMapping(value = "/formInsert.do", method=RequestMethod.POST)
	public String formInsert(FormVO vo) {
		service.formInsert(vo);
		return "redirect:/document.do";
	}

	@RequestMapping(value = "/chatInsert.do", produces="application/json; charset=UTF-8")
	public String chatInsert(@RequestBody String vo, HttpSession session, HttpServletResponse response) throws ParseException {

		

		//JSON으로 파싱. 파싱할 때 / 형태 꼭 확인해야 함!! -> JSON 아니라고 인식해버림
		JSONObject obj = (JSONObject) new JSONParser().parse(vo);
		/*
		 * System.out.println(obj); System.out.println((String)obj.get("reason"));
		 */
		System.out.println(obj);
		
		//insert할 VO 만들어주기
		FormVO fvo = new FormVO(); 

		fvo.setDocuType((String)obj.get("docuType"));
		fvo.setUserId(userId);
		fvo.setStartDate((String)obj.get("startDate"));
		fvo.setReason((String)obj.get("reason"));
		
		
		//종료일자 없을 때 ( 사직, 반차 )
		if(obj.get("endDate") != null) {
			fvo.setEndDate((String)obj.get("endDate"));
		}else {
			fvo.setEndDate((String)obj.get("startDate"));
		}
		
		//반차 시간구분
		if(obj.get("utime") != null) {
			fvo.setUtime((String)obj.get("utime"));
		}

		service.chatInsert(fvo);
		
		return "redirect:/document.do";
		
	}

	

}
