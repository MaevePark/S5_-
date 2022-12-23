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

	private int board_no;
	private String board_title;
	private String board_content;
	private String board_writer;
	private Timestamp board_date;
	private int board_category_code;

// bfile 테이블에 대한 방법 1
	private List<BoardFileVo> bfilelist;
	
	public BoardVo() {
		super();
	}

	public BoardVo(int board_no, String board_title, String board_content, String board_writer, Timestamp board_date,
			int board_category_code, List<BoardFileVo> bfilelist) {
		super();
		this.board_no = board_no;
		this.board_title = board_title;
		this.board_content = board_content;
		this.board_writer = board_writer;
		this.board_date = board_date;
		this.board_category_code = board_category_code;
		this.bfilelist = bfilelist;
	}

	@Override
	public String toString() {
		return "BoardVo [board_no=" + board_no + ", board_title=" + board_title + ", board_content=" + board_content
				+ ", board_writer=" + board_writer + ", board_date=" + board_date + ", board_category_code="
				+ board_category_code + ", bfilelist=" + bfilelist + "]";
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public String getBoard_writer() {
		return board_writer;
	}

	public void setBoard_writer(String board_writer) {
		this.board_writer = board_writer;
	}

	public Timestamp getBoard_date() {
		return board_date;
	}

	public void setBoard_date(Timestamp board_date) {
		this.board_date = board_date;
	}

	public int getBoard_category_code() {
		return board_category_code;
	}

	public void setBoard_category_code(int board_category_code) {
		this.board_category_code = board_category_code;
	}

	public List<BoardFileVo> getBfilelist() {
		return bfilelist;
	}

	public void setBfilelist(List<BoardFileVo> bfilelist) {
		this.bfilelist = bfilelist;
	}

}
