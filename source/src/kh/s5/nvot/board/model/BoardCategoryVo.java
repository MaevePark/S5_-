package kh.s5.nvot.board.model;

public class BoardCategoryVo {
//	BOARD_CATEGORY_CODE NOT NULL NUMBER(2)    
//	BOARD_CATEGORY_NAME NOT NULL VARCHAR2(20) 
	
	private int board_category_code;
	private String board_category_name;
	
	public BoardCategoryVo() {
		super();
	}
	public BoardCategoryVo(int board_category_code, String board_category_name) {
		super();
		this.board_category_code = board_category_code;
		this.board_category_name = board_category_name;
	}
	@Override
	public String toString() {
		return "BoardCategoryVo [board_category_code=" + board_category_code + ", board_category_name="
				+ board_category_name + "]";
	}
	public int getBoard_category_code() {
		return board_category_code;
	}
	public void setBoard_category_code(int board_category_code) {
		this.board_category_code = board_category_code;
	}
	public String getBoard_category_name() {
		return board_category_name;
	}
	public void setBoard_category_name(String board_category_name) {
		this.board_category_name = board_category_name;
	}
	
}
