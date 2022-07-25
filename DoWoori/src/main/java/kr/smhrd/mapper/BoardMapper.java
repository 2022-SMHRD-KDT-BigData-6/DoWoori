package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Update;

import kr.smhrd.model.BoardVO;

public interface BoardMapper {

//	List는 Interface로 import
	public List<BoardVO> boardList();
	public void boardInsert(BoardVO vo);
	public BoardVO boardContent(int idx);
	
	
//쿼리문이 간단하다면 mapper.xml에서 작성하지 않고 위쪽에 annotation 추가해서 처리할 수 있다.
	@Delete("delete from board where idx=#{idx}")
	public void boardDelete(int idx);
	public void boardUpdate(BoardVO vo);

	@Update("update board set contents=#{contents}, indate=now() where idx=#{idx}")
	public void boardUpdateAjax(BoardVO vo);
}

