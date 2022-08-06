package kr.smhrd.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.smhrd.service.FormService;
import kr.smhrd.model.FormVO;

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
	
	/*
	 * @RequestMapping("/formContentAjax.do") public List<FormVO>
	 * formContentAjax(String userId, Model model){ List<FormVO> contents =
	 * service.formContentAjax(userId); model.addAttribute("list", contents); return
	 * contents; }
	 */
//	@RequestMapping("/boardListAjax.do")
//	  public List<FormVO> boardListAjax() {
//		List<FormVO> list = service.boardListAjax();
//		
//		return list;
//	}
//	
//	@RequestMapping("/boardInsert.do")
//	public void boardInsertAjax(BoardVO vo) {
//		service.boardInsertAjax(vo);
//	}
//	
//	@RequestMapping("/boardDelete.do")
//	public void boardDeleteAjax(int idx) {
//		service.boardDeleteAjax(idx);
//	}
//	
//	@RequestMapping("/boardUpdateAjax.do")
//	public void boardUpdateAjax(BoardVO vo) { //되돌릴 값 없으면 void
//									//받아올 값이 idx, contents이므로 이 둘을 대표할 수 있는 자료형인 vo 사용!!
//		service.boardUpdateAjax(vo);
//	}
}
