package kr.smhrd.model;

import lombok.Data;

@Data
public class BoardVO {

// ★★ 반드시 table 컬럼명과 class의 field명을 일치시킬 것 
	private int idx;
	private String title;
	private String writer;
	private String indate;
	private String contents;
}


