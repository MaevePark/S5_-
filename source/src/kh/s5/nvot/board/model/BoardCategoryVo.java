package kh.s5.nvot.board.model;

public class BoardCategoryVo {
//	BOARD_CATEGORY_CODE NOT NULL NUMBER(2)    
//	BOARD_CATEGORY_NAME NOT NULL VARCHAR2(20) 
	
	private int BOARD_CATEGORY_CODE;
	private String BOARD_CATEGORY_NAME;
	public BoardCategoryVo(int bOARD_CATEGORY_CODE, String bOARD_CATEGORY_NAME) {
		super();
		BOARD_CATEGORY_CODE = bOARD_CATEGORY_CODE;
		BOARD_CATEGORY_NAME = bOARD_CATEGORY_NAME;
	}
	@Override
	public String toString() {
		return "BoardCategoryVo [BOARD_CATEGORY_CODE=" + BOARD_CATEGORY_CODE + ", BOARD_CATEGORY_NAME="
				+ BOARD_CATEGORY_NAME + "]";
	}
	public int getBOARD_CATEGORY_CODE() {
		return BOARD_CATEGORY_CODE;
	}
	public void setBOARD_CATEGORY_CODE(int bOARD_CATEGORY_CODE) {
		BOARD_CATEGORY_CODE = bOARD_CATEGORY_CODE;
	}
	public String getBOARD_CATEGORY_NAME() {
		return BOARD_CATEGORY_NAME;
	}
	public void setBOARD_CATEGORY_NAME(String bOARD_CATEGORY_NAME) {
		BOARD_CATEGORY_NAME = bOARD_CATEGORY_NAME;
	}		
}
