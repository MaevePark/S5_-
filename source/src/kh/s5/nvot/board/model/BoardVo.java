package kh.s5.nvot.board.model;

import java.sql.Timestamp;
import java.util.List;

public class BoardVo {
//	BOARD_NO            NOT NULL NUMBER       
//	BOARD_TITLE         NOT NULL VARCHAR2(50) 
//	BOARD_CONTENT       NOT NULL CLOB         
//	BOARD_WRITER        NOT NULL VARCHAR2(30) 
//	BOARD_DATE          NOT NULL TIMESTAMP(6) 
//	BOARD_CATEGORY_CODE NOT NULL NUMBER(2)    

//	<List>
//	BOARD_FILEPATH NOT NULL VARCHAR2(500) 
//	BOARD_NO       NOT NULL NUMBER       

	private int BOARD_NO;
	private String BOARD_TITLE;
	private String BOARD_CONTENT;
	private String BOARD_WRITER;
	private Timestamp BOARD_DATE;
	private int BOARD_CATEGORY_CODE;

// bfile 테이블에 대한 방법 1
	private List<BoardFileVo> bfilelist;

	public BoardVo(int bOARD_NO, String bOARD_TITLE, String bOARD_CONTENT, String bOARD_WRITER, Timestamp bOARD_DATE,
			int bOARD_CATEGORY_CODE, List<BoardFileVo> bfilelist) {
		super();
		BOARD_NO = bOARD_NO;
		BOARD_TITLE = bOARD_TITLE;
		BOARD_CONTENT = bOARD_CONTENT;
		BOARD_WRITER = bOARD_WRITER;
		BOARD_DATE = bOARD_DATE;
		BOARD_CATEGORY_CODE = bOARD_CATEGORY_CODE;
		this.bfilelist = bfilelist;
	}

	@Override
	public String toString() {
		return "BoardVo [BOARD_NO=" + BOARD_NO + ", BOARD_TITLE=" + BOARD_TITLE + ", BOARD_CONTENT=" + BOARD_CONTENT
				+ ", BOARD_WRITER=" + BOARD_WRITER + ", BOARD_DATE=" + BOARD_DATE + ", BOARD_CATEGORY_CODE="
				+ BOARD_CATEGORY_CODE + ", bfilelist=" + bfilelist + "]";
	}

	public int getBOARD_NO() {
		return BOARD_NO;
	}
	public void setBOARD_NO(int bOARD_NO) {
		BOARD_NO = bOARD_NO;
	}
	public String getBOARD_TITLE() {
		return BOARD_TITLE;
	}
	public void setBOARD_TITLE(String bOARD_TITLE) {
		BOARD_TITLE = bOARD_TITLE;
	}
	public String getBOARD_CONTENT() {
		return BOARD_CONTENT;
	}
	public void setBOARD_CONTENT(String bOARD_CONTENT) {
		BOARD_CONTENT = bOARD_CONTENT;
	}
	public String getBOARD_WRITER() {
		return BOARD_WRITER;
	}
	public void setBOARD_WRITER(String bOARD_WRITER) {
		BOARD_WRITER = bOARD_WRITER;
	}
	public Timestamp getBOARD_DATE() {
		return BOARD_DATE;
	}
	public void setBOARD_DATE(Timestamp bOARD_DATE) {
		BOARD_DATE = bOARD_DATE;
	}
	public int getBOARD_CATEGORY_CODE() {
		return BOARD_CATEGORY_CODE;
	}
	public void setBOARD_CATEGORY_CODE(int bOARD_CATEGORY_CODE) {
		BOARD_CATEGORY_CODE = bOARD_CATEGORY_CODE;
	}
	public List<BoardFileVo> getBfilelist() {
		return bfilelist;
	}
	public void setBfilelist(List<BoardFileVo> bfilelist) {
		this.bfilelist = bfilelist;
	}
}
