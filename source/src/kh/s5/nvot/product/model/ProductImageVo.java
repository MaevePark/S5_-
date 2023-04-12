package kh.s5.nvot.product.model;

public class ProductImageVo {
//	PRODUCT_IMAGE_CODE NOT NULL VARCHAR2(500) 
//	PRODUCT_CODE       NOT NULL NUMBER 
	
	private String product_image_code;
	private int product_code;
	
	public ProductImageVo(String product_image_code, int product_code) {
		super();
		this.product_image_code = product_image_code;
		this.product_code = product_code;
	}
	public ProductImageVo() {
		super();
	}
	@Override
	public String toString() {
		return "ProductImageVo [product_image_code=" + product_image_code + ", product_code=" + product_code + "]";
	}
	public String getProduct_image_code() {
		return product_image_code;
	}
	public void setProduct_image_code(String product_image_code) {
		this.product_image_code = product_image_code;
	}
	public int getProduct_code() {
		return product_code;
	}
	public void setProduct_code(int product_code) {
		this.product_code = product_code;
	}
		
}
