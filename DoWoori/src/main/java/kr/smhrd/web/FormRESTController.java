package kr.smhrd.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.smhrd.service.FormService;
import kr.smhrd.model.FormVO;
import kr.smhrd.model.UserVO;

@RestController
public class FormRESTController {
	@Autowired
	private FormService service;
	
	@RequestMapping("/formContentAjax.do")
	public List<FormVO> formContentAjax(String userId, Model model) {

		List<FormVO> contents = service.formContentAjax(userId);
		model.addAttribute("list", contents);

		return contents;
	}
	
	 @RequestMapping("/adminAjax.do") 
	 public List<UserVO> adminAjax(int deptNum, Model model) {
		 
		 List<UserVO> avo = service.adminAjax(deptNum); 
		 model.addAttribute("avo", avo);
		 return avo; 
	 }

	 @RequestMapping("/approveAjax.do")
	 public List<FormVO> approveAjax(String adminId, Model model){
			List<FormVO> contents = service.approveAjax(adminId);
			model.addAttribute("list", contents);

			return contents;
	 }
	 
	 
	 @RequestMapping("/userAjax.do")
	 public List<UserVO> userAjax(int deptNum, Model model){
		 List<UserVO> uvo = service.userAjax(deptNum);
		 model.addAttribute("uvo", uvo);
		 return uvo;
	 }
}
