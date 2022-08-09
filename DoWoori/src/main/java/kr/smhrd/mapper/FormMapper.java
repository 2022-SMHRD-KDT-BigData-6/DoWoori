package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.smhrd.model.FormVO;
import kr.smhrd.model.UserVO;

public interface FormMapper {

	@Select("select * from userInfo where id=#{id} and pw=#{pw}")
	public UserVO login(UserVO vo);

	public void join(UserVO vo);

	
	@Select("select * from formInfo where userId=#{userId}")
	public List<FormVO> formContent(String userId);

	public List<UserVO> adminAjax(int deptNum);

	@Select("select * from formInfo where adminId=#{adminId}")
	public List<FormVO> approveAjax(String adminId);

	@Select("select * from userInfo where deptNum=#{deptNum}")
	public List<UserVO> userAjax(int deptNum);

	@Delete("delete from formInfo where formNum=#{formNum}")
	public void formDelete(int formNum);


	@Update("update formInfo set startDate=#{startDate}, endDate=#{endDate}, reason=#{reason}  where formNum=#{formNum}")
	public void formUpdate(FormVO vo);

}

