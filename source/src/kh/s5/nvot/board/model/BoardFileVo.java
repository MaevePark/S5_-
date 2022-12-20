package kh.s5.nvot.board.model;

public class BoardFileVo {
//	BOARD_FILEPATH NOT NULL VARCHAR2(500) 
//	BOARD_NO       NOT NULL NUMBER    
	private String BOARD_FILEPATH;
	private int BOARD_NO;
	@Override
	public String toString() {
		return "BoardFileVo [BOARD_FILEPATH=" + BOARD_FILEPATH + ", BOARD_NO=" + BOARD_NO + "]";
	}
	public String getBOARD_FILEPATH() {
		return BOARD_FILEPATH;
	}
	public void setBOARD_FILEPATH(String bOARD_FILEPATH) {
		BOARD_FILEPATH = bOARD_FILEPATH;
	}
	public int getBOARD_NO() {
		return BOARD_NO;
	}
	public void setBOARD_NO(int bOARD_NO) {
		BOARD_NO = bOARD_NO;
	}

	
	
}
