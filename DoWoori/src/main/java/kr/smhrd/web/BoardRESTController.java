package kr.smhrd.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.smhrd.service.BoardService;
import kr.smhrd.model.BoardVO;
import kr.smhrd.service.BoardService;

@RestController
//ResponseBody 생략가능
public class BoardRESTController {
	@Autowired
	private BoardService service;
	
	@RequestMapping("/boardListAjax.do")
	  public List<BoardVO> boardListAjax() {
		List<BoardVO> list = service.boardListAjax();
		
		return list;
	}
	
	@RequestMapping("/boardInsert.do")
	public void boardInsertAjax(BoardVO vo) {
		service.boardInsertAjax(vo);
	}
	
	@RequestMapping("/boardDelete.do")
	public void boardDeleteAjax(int idx) {
		service.boardDeleteAjax(idx);
	}
	
	@RequestMapping("/boardUpdateAjax.do")
	public void boardUpdateAjax(BoardVO vo) { //되돌릴 값 없으면 void
									//받아올 값이 idx, contents이므로 이 둘을 대표할 수 있는 자료형인 vo 사용!!
		service.boardUpdateAjax(vo);
	}
}
