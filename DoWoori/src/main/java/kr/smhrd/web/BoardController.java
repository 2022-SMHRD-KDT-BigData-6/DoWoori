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
public class BoardController {

	//DB 쿼리문을 수행할 수 있는 인터페이스 생성
	@Autowired //★필수!! 자동으로 연결, 객체 생성하는 annotation
	private BoardService service;
	
	// 메소드 : public String 메소드명()
	@RequestMapping("/")
	// Handler Mapping --> basic.do 라는 요청 url과 basic method를 연결!
	public String basic(Model model) {

		return "basic";  

	}
	
	
	/*
	 * @RequestMapping("/boardListAjax.do") public @ResponseBody List<BoardVO>
	 * boardListAjax() { // @ResponseBody // : 응답에 대한 제어권이 client에게 전부 되돌아간다.(비동기
	 * 통신방식에서 사용) // : ※converter가 로드가 되어있지 않으면 작동 불가능!
	 * //http://localhost:8090/web/boardListAjax.do List<BoardVO> list =
	 * mapper.boardList();
	 * 
	 * //List --- GSON --> JSON // 스프링에서는 GSON이 아닌 새로운 컨버터 사용 // List --- jackson
	 * --> JSON // : 스프링 프레임워크는 jackson라이브러리를 로드해주기만 하면 // 자동으로 json 구조로 변환시켜준다
	 * 
	 * return list; }
	 * 
	 * @RequestMapping("/boardInsert.do") public @ResponseBody void
	 * boardInsertAjax(BoardVO vo) { mapper.boardInsert(vo); }
	 * 
	 * @RequestMapping("/boardDelete.do") public @ResponseBody void
	 * boardDeleteAjax(int idx) { mapper.boardDelete(idx); }
	 * 
	 * @RequestMapping("/boardUpdateAjax.do") public @ResponseBody void
	 * boardUpdateAjax(BoardVO vo) { //되돌릴 값 없으면 void //받아올 값이 idx, contents이므로 이 둘을
	 * 대표할 수 있는 자료형인 vo 사용!! mapper.boardUpdateAjax(vo); }
	 */
}
