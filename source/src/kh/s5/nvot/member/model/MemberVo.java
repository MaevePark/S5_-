package kh.s5.nvot.member.model;

import java.sql.Date;

public class MemberVo {
//	MEMBER_ID           NOT NULL VARCHAR2(30)  
//	MEMBER_PWD          NOT NULL VARCHAR2(30)  
//	MEMBER_NAME         NOT NULL VARCHAR2(100) 
//	MEMBER_EMAIL                 VARCHAR2(80)  
//	MEMBER_CELLPHONE    NOT NULL VARCHAR2(12)  
//	MEMBER_TEL                   VARCHAR2(12)  
//	MEMBER_ADDRESS_POST NOT NULL VARCHAR2(80)  
//	MEMBER_ADDRESS_1    NOT NULL VARCHAR2(50)  
//	MEMBER_ADDRESS_2    NOT NULL VARCHAR2(50)  
//	MEMBER_BIRTHDAY     NOT NULL DATE          
//	MEMBER_EMAIL_AGREE           NUMBER        
//	MEMBER_SMS_AGREE             NUMBER  
	
	private String member_id;
	private String member_pwd;
	private String member_name;
	private String member_email;
	private String member_cellphone;
	private String member_tel;
	private String member_address_post;
	private String member_address_1;
	private String member_address_2;
	private Date member_birthday;
	private int member_email_agree;
	private int member_sms_agree;

	public MemberVo() {
		super();
	}

	public MemberVo(String member_id, String member_pwd, String member_name, String member_email,
			String member_cellphone, String member_tel, String member_address_post, String member_address_1,
			String member_address_2, Date member_birthday, int member_email_agree, int member_sms_agree) {
		super();
		this.member_id = member_id;
		this.member_pwd = member_pwd;
		this.member_name = member_name;
		this.member_email = member_email;
		this.member_cellphone = member_cellphone;
		this.member_tel = member_tel;
		this.member_address_post = member_address_post;
		this.member_address_1 = member_address_1;
		this.member_address_2 = member_address_2;
		this.member_birthday = member_birthday;
		this.member_email_agree = member_email_agree;
		this.member_sms_agree = member_sms_agree;
	}

	@Override
	public String toString() {
		return "MemberVo [member_id=" + member_id + ", member_pwd=" + member_pwd + ", member_name=" + member_name
				+ ", member_email=" + member_email + ", member_cellphone=" + member_cellphone + ", member_tel="
				+ member_tel + ", member_address_post=" + member_address_post + ", member_address_1=" + member_address_1
				+ ", member_address_2=" + member_address_2 + ", member_birthday=" + member_birthday
				+ ", member_email_agree=" + member_email_agree + ", member_sms_agree=" + member_sms_agree + "]";
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_pwd() {
		return member_pwd;
	}

	public void setMember_pwd(String member_pwd) {
		this.member_pwd = member_pwd;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public String getMember_cellphone() {
		return member_cellphone;
	}

	public void setMember_cellphone(String member_cellphone) {
		this.member_cellphone = member_cellphone;
	}

	public String getMember_tel() {
		return member_tel;
	}

	public void setMember_tel(String member_tel) {
		this.member_tel = member_tel;
	}

	public String getMember_address_post() {
		return member_address_post;
	}

	public void setMember_address_post(String member_address_post) {
		this.member_address_post = member_address_post;
	}

	public String getMember_address_1() {
		return member_address_1;
	}

	public void setMember_address_1(String member_address_1) {
		this.member_address_1 = member_address_1;
	}

	public String getMember_address_2() {
		return member_address_2;
	}

	public void setMember_address_2(String member_address_2) {
		this.member_address_2 = member_address_2;
	}

	public Date getMember_birthday() {
		return member_birthday;
	}

	public void setMember_birthday(Date member_birthday) {
		this.member_birthday = member_birthday;
	}

	public int getMember_email_agree() {
		return member_email_agree;
	}

	public void setMember_email_agree(int member_email_agree) {
		this.member_email_agree = member_email_agree;
	}

	public int getMember_sms_agree() {
		return member_sms_agree;
	}

	public void setMember_sms_agree(int member_sms_agree) {
		this.member_sms_agree = member_sms_agree;
	}
	
}
