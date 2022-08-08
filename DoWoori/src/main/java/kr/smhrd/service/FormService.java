package kr.smhrd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.mapper.FormMapper;
import kr.smhrd.model.FormVO;
import kr.smhrd.model.UserVO;

//비즈니스 레이어임을 알려주는 어노테이션
@Service
public class FormService {
	
	@Autowired
	private FormMapper mapper;

	public UserVO login(UserVO vo) {
		UserVO uvo = mapper.login(vo);
		return uvo;
	}

	public void join(UserVO vo) {
		mapper.join(vo);
	}




	public List<FormVO> formContentAjax(String userId) {
		List<FormVO> contents = mapper.formContent(userId);
		return contents;
	}

	public List<UserVO> adminAjax(int deptNum) {
		List<UserVO> avo = mapper.adminAjax(deptNum);
		return avo;
	}

	public List<FormVO> approveAjax(String adminId) {
		List<FormVO> contents = mapper.approveAjax(adminId);
		return contents;
	}


	public List<UserVO> userAjax(int deptNum) {
		List<UserVO> uvo = mapper.userAjax(deptNum);
		return uvo;
	}




	/*
	 * public List<FormVO> formContentAjax(String userId) { List<FormVO> contents =
	 * mapper.formContent(); return contents; }
	 */


}
