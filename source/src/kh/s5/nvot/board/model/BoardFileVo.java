package kh.s5.nvot.board.model;

public class BoardFileVo {
//	BOARD_FILEPATH NOT NULL VARCHAR2(500) 
//	BOARD_NO       NOT NULL NUMBER    
	private String board_filepath;
	private int board_no;
	public BoardFileVo() {
		super();
	}
	public BoardFileVo(String board_filepath, int board_no) {
		super();
		this.board_filepath = board_filepath;
		this.board_no = board_no;
	}
	@Override
	public String toString() {
		return "BoardFileVo [board_filepath=" + board_filepath + ", board_no=" + board_no + "]";
	}
	public String getBoard_filepath() {
		return board_filepath;
	}
	public void setBoard_filepath(String board_filepath) {
		this.board_filepath = board_filepath;
	}
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
}
