package kr.smhrd.model;

import lombok.Data;

@Data
public class UserVO {

	private String id;
	private String pw;
	private String name;
	private int userNum;
	private String deptNum;
	private String spot;
	private String position;
	private float leftOff;
}
