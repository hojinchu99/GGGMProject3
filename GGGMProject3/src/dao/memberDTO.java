package dao;

import java.util.*;

public class memberDTO {
	private String name;
	private String id;
	private String pwd;
	private Date birth;
	private String tel;
	private String sex;
	private String post;
	private String addr1;
	private String addr2;
	private int sumpoint;
	private String email;
	private String emailreceive;
	private int grade;
	private memberAddDTO add;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public int getSumpoint() {
		return sumpoint;
	}

	public void setSumpoint(int sumpoint) {
		this.sumpoint = sumpoint;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmailreceive() {
		return emailreceive;
	}

	public void setEmailreceive(String emailreceive) {
		this.emailreceive = emailreceive;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public memberAddDTO getAdd() {
		return add;
	}

	public void setAdd(memberAddDTO add) {
		this.add = add;
	}

}
