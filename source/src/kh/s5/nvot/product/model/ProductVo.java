package kh.s5.nvot.product.model;

public class ProductVo {
//	PRODUCT_ID     NOT NULL NUMBER        
//	PRODUCT_NAME   NOT NULL VARCHAR2(300) 
//	PRODUCT_PRICE  NOT NULL NUMBER        
//	PRODUCT_DETAIL NOT NULL CLOB    
	
	private int product_id;
	private String product_name;
	private int product_price;
	private String product_detail;
	public ProductVo(int product_id, String product_name, int product_price, String product_detail) {
		super();
		this.product_id = product_id;
		this.product_name = product_name;
		this.product_price = product_price;
		this.product_detail = product_detail;
	}
	@Override
	public String toString() {
		return "ProductVo [product_id=" + product_id + ", product_name=" + product_name + ", product_price="
				+ product_price + ", product_detail=" + product_detail + "]";
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public String getProduct_detail() {
		return product_detail;
	}
	public void setProduct_detail(String product_detail) {
		this.product_detail = product_detail;
	}
}
