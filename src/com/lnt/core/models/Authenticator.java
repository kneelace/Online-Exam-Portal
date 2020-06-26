package com.lnt.core.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "authentication")
@SequenceGenerator(name="auth_seq",sequenceName="AUTHENTICATION_SEQ", allocationSize=1)
public class Authenticator {

	@Id
	@Column(name = "AUTH_ID")
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="auth_seq")
	private Integer authId;

	@Column(name = "USER_NAME")
	private String studentEmail;

	@Column(name = "PASSWORD")
	private String password;
	
	@Column(name="STUDENT_ID")
	private Integer studentId;
	
	@Transient
	private String captcha;

	public String getCaptcha() {
		return captcha;
	}

	public void setCaptcha(String captcha) {
		this.captcha = captcha;
	}

	@Override
	public String toString() {
		return "Authenticator [authId=" + authId + ", studentEmail=" + studentEmail + ", password=" + password + "]";
	}

	public Authenticator(Integer studentId, String studentEmail, String password) {
		super();
		this.studentId = studentId;
		this.studentEmail = studentEmail;
		this.password = password;
	}

	public String getStudentEmail() {
		return studentEmail;
	}

	public void setStudentEmail(String studentEmail) {
		this.studentEmail = studentEmail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Authenticator(Integer authId, String studentEmail, String password, Integer studentId, String captcha) {
		super();
		this.authId = authId;
		this.studentEmail = studentEmail;
		this.password = password;
		this.studentId = studentId;
		this.captcha = captcha;
	}

	public Authenticator() {
		super();
	}

	public Authenticator(String studentEmail, String password, String captcha) {
		super();
		this.studentEmail = studentEmail;
		this.password = password;
		this.captcha = captcha;
	}

	public Authenticator(String studentEmail, String password) {
		super();
		this.studentEmail = studentEmail;
		this.password = password;
	}

	
	
}
