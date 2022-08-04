package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.smhrd.model.UserVO;

public interface UserMapper {

	@Select("select * from userInfo where id=#{id} and pw=#{pw}")
	public UserVO login(UserVO vo);

	public void join(UserVO vo);
}

