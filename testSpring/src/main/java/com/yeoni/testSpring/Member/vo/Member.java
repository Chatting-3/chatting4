package com.yeoni.testSpring.Member.vo;

import java.io.Serializable;
import java.util.Date;

public class Member implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1635814884179653188L;

	private String id;
	private String pwd;
	private String name;	
	private String gender;
	private int age;
	private String nickname;
	private Date enrollDate;
	private String deleteYN;
	private Date deleteDate;
	
	private String chatroom_no;
	
	public Member() {}

	public Member(String id, String pwd, String name, String gender, int age, String nickname, Date enrollDate,
			String deleteYN, Date deleteDate, String chatroom_no) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.gender = gender;
		this.age = age;
		this.nickname = nickname;
		this.enrollDate = enrollDate;
		this.deleteYN = deleteYN;
		this.deleteDate = deleteDate;
		this.chatroom_no = chatroom_no;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getDeleteYN() {
		return deleteYN;
	}

	public void setDeleteYN(String deleteYN) {
		this.deleteYN = deleteYN;
	}

	public Date getDeleteDate() {
		return deleteDate;
	}

	public void setDeleteDate(Date deleteDate) {
		this.deleteDate = deleteDate;
	}

	public String getChatroom_no() {
		return chatroom_no;
	}

	public void setChatroom_no(String chatroom_no) {
		this.chatroom_no = chatroom_no;
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", pwd=" + pwd + ", name=" + name + ", gender=" + gender + ", age=" + age
				+ ", nickname=" + nickname + ", enrollDate=" + enrollDate + ", deleteYN=" + deleteYN + ", deleteDate="
				+ deleteDate + ", chatroom_no=" + chatroom_no + "]";
	}
	
}
