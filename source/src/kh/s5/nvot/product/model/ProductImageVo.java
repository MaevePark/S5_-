package kh.s5.nvot.product.model;

public class ProductImageVo {
//	PRODUCT_IMAGE_CODE NOT NULL VARCHAR2(500) 
//	PRODUCT_CODE       NOT NULL NUMBER 
	
	private String PRODUCT_IMAGE_CODE;
	private int PRODUCT_CODE;
	public ProductImageVo(String pRODUCT_IMAGE_CODE, int pRODUCT_CODE) {
		super();
		PRODUCT_IMAGE_CODE = pRODUCT_IMAGE_CODE;
		PRODUCT_CODE = pRODUCT_CODE;
	}
	@Override
	public String toString() {
		return "ProductImageVo [PRODUCT_IMAGE_CODE=" + PRODUCT_IMAGE_CODE + ", PRODUCT_CODE=" + PRODUCT_CODE + "]";
	}
	public String getPRODUCT_IMAGE_CODE() {
		return PRODUCT_IMAGE_CODE;
	}
	public void setPRODUCT_IMAGE_CODE(String pRODUCT_IMAGE_CODE) {
		PRODUCT_IMAGE_CODE = pRODUCT_IMAGE_CODE;
	}
	public int getPRODUCT_CODE() {
		return PRODUCT_CODE;
	}
	public void setPRODUCT_CODE(int pRODUCT_CODE) {
		PRODUCT_CODE = pRODUCT_CODE;
	}	
}
