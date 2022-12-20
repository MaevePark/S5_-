package kh.s5.nvot.product.model;

public class ProductVo {
//	PRODUCT_ID     NOT NULL NUMBER        
//	PRODUCT_NAME   NOT NULL VARCHAR2(300) 
//	PRODUCT_PRICE  NOT NULL NUMBER        
//	PRODUCT_DETAIL NOT NULL CLOB    
	
	private int PRODUCT_ID;
	private String PRODUCT_NAME;
	private int PRODUCT_PRICE;
	private String PRODUCT_DETAIL;
	public ProductVo(int pRODUCT_ID, String pRODUCT_NAME, int pRODUCT_PRICE, String pRODUCT_DETAIL) {
		super();
		PRODUCT_ID = pRODUCT_ID;
		PRODUCT_NAME = pRODUCT_NAME;
		PRODUCT_PRICE = pRODUCT_PRICE;
		PRODUCT_DETAIL = pRODUCT_DETAIL;
	}
	@Override
	public String toString() {
		return "ProductVo [PRODUCT_ID=" + PRODUCT_ID + ", PRODUCT_NAME=" + PRODUCT_NAME + ", PRODUCT_PRICE="
				+ PRODUCT_PRICE + ", PRODUCT_DETAIL=" + PRODUCT_DETAIL + "]";
	}
	public int getPRODUCT_ID() {
		return PRODUCT_ID;
	}
	public void setPRODUCT_ID(int pRODUCT_ID) {
		PRODUCT_ID = pRODUCT_ID;
	}
	public String getPRODUCT_NAME() {
		return PRODUCT_NAME;
	}
	public void setPRODUCT_NAME(String pRODUCT_NAME) {
		PRODUCT_NAME = pRODUCT_NAME;
	}
	public int getPRODUCT_PRICE() {
		return PRODUCT_PRICE;
	}
	public void setPRODUCT_PRICE(int pRODUCT_PRICE) {
		PRODUCT_PRICE = pRODUCT_PRICE;
	}
	public String getPRODUCT_DETAIL() {
		return PRODUCT_DETAIL;
	}
	public void setPRODUCT_DETAIL(String pRODUCT_DETAIL) {
		PRODUCT_DETAIL = pRODUCT_DETAIL;
	}	
}
