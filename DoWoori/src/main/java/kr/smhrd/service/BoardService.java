package kr.smhrd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.mapper.BoardMapper;
import kr.smhrd.model.BoardVO;

//비즈니스 레이어임을 알려주는 어노테이션
@Service
public class BoardService {

	//Business Layer 담당하는 클래스
	// 로직들을 다 가지고 있을 수 있게 하는 클래스
	// ex) if문, for문을 활용해서 작업, 받아온 데이터들을 다른 형태로 바꿔주는 로직을 짜는 등.
	
	
	//service 안쪽에는 RequestMapping을 쓰지 않는다.
	// 요청 --> FC --> Controller(RequestMapping 잡는 곳) --> Service한테 일 시킴 -> Mapper한테 일 --> DB로 들어감
	
	
	@Autowired
	private BoardMapper mapper;
	
	  public List<BoardVO> boardListAjax() {
		List<BoardVO> list = mapper.boardList();
		
		return list;
	}

	public void boardInsertAjax(BoardVO vo) {
		mapper.boardInsert(vo);
	}

	public void boardDeleteAjax(int idx) {
		mapper.boardDelete(idx);
	}
	
	public void boardUpdateAjax(BoardVO vo) { //되돌릴 값 없으면 void
									//받아올 값이 idx, contents이므로 이 둘을 대표할 수 있는 자료형인 vo 사용!!
		mapper.boardUpdateAjax(vo);
	}
}
