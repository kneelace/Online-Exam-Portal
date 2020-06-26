package com.lnt.core.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "student")
@SequenceGenerator(name = "stud_seq", sequenceName = "student_seq", allocationSize = 1)
public class Student {
	@Id
	@Column(name = "Student_Id")
	@GeneratedValue(generator = "stud_seq", strategy = GenerationType.SEQUENCE)
	private Integer studentId;

	@Column(name = "STUDENT_FIRSTNAME")
	private String studentFirstName;

	@Column(name = "STUDENT_LASTNAME")
	private String studentLastName;

	@Column(name = "STUDENT_MIDDLENAME")
	private String studentMiddleName;

	@Column(name = "STUDENT_EMAIL")
	private String studentEmail;

	@Column(name = "STUDENT_MOBILE")
	private String studentMobile;

	@Column(name = "STUDENT_DOB")
	private String studentDOB;

	@Column(name = "STUDENT_STATE")
	private String studentState;

	@Column(name = "STUDENT_CITY")
	private String studentCity;

	@Column(name = "STUDENT_YEAR_QUALIFIED")
	private String studentYearQualified;

	@Column(name = "PASSWORD")
	private String password;

	@Column(name = "STUDENT_BATCH_ID")
	private String studentBatchId;

	public Student() {
		super();
	}

	public Student(int studentId, String studentFirstName, String studentLastName, String studentMiddleName,
			String studentEmail, String studentMobile, String studentDOB, String studentState, String studentCity,
			String studentYearQualified, String password, String studentBatchId) {
		super();
		this.studentId = studentId;
		this.studentFirstName = studentFirstName;
		this.studentLastName = studentLastName;
		this.studentMiddleName = studentMiddleName;
		this.studentEmail = studentEmail;
		this.studentMobile = studentMobile;
		this.studentDOB = studentDOB;
		this.studentState = studentState;
		this.studentCity = studentCity;
		this.studentYearQualified = studentYearQualified;
		this.password = password;
		this.studentBatchId = studentBatchId;
	}
	

	public Student(Integer studentId, String studentFirstName, String studentLastName, String studentEmail,
			String studentMobile, String studentState, String studentCity) {
		super();
		this.studentId = studentId;
		this.studentFirstName = studentFirstName;
		this.studentLastName = studentLastName;
		this.studentEmail = studentEmail;
		this.studentMobile = studentMobile;
		this.studentState = studentState;
		this.studentCity = studentCity;
	}

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public String getStudentFirstName() {
		return studentFirstName;
	}

	public void setStudentFirstName(String studentFirstName) {
		this.studentFirstName = studentFirstName;
	}

	public String getStudentLastName() {
		return studentLastName;
	}

	public void setStudentLastName(String studentLastName) {
		this.studentLastName = studentLastName;
	}

	public String getStudentMiddleName() {
		return studentMiddleName;
	}

	public void setStudentMiddleName(String studentMiddleName) {
		this.studentMiddleName = studentMiddleName;
	}

	public String getStudentEmail() {
		return studentEmail;
	}

	public void setStudentEmail(String studentEmail) {
		this.studentEmail = studentEmail;
	}

	public String getStudentMobile() {
		return studentMobile;
	}

	public void setStudentMobile(String studentMobile) {
		this.studentMobile = studentMobile;
	}

	public String getStudentDOB() {
		return studentDOB;
	}

	public void setStudentDOB(String studentDOB) {
		this.studentDOB = studentDOB;
	}

	public String getStudentState() {
		return studentState;
	}

	public void setStudentState(String studentState) {
		this.studentState = studentState;
	}

	public String getStudentCity() {
		return studentCity;
	}

	public void setStudentCity(String studentCity) {
		this.studentCity = studentCity;
	}

	public String getStudentYearQualified() {
		return studentYearQualified;
	}

	public void setStudentYearQualified(String studentYearQualified) {
		this.studentYearQualified = studentYearQualified;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getStudentBatchId() {
		return studentBatchId;
	}

	public void setStudentBatchId(String studentBatchId) {
		this.studentBatchId = studentBatchId;
	}

	@Override
	public String toString() {
		return "Student [studentId=" + studentId + ", studentFirstName=" + studentFirstName + ", studentLastName="
				+ studentLastName + ", studentMiddleName=" + studentMiddleName + ", studentEmail=" + studentEmail
				+ ", studentMobile=" + studentMobile + ", studentDOB=" + studentDOB + ", studentState=" + studentState
				+ ", studentCity=" + studentCity + ", studentYearQualified=" + studentYearQualified + ", password="
				+ password + ", studentBatchId=" + studentBatchId + "]";
	}

	public Student(String studentFirstName, String studentLastName, String studentMiddleName, String studentEmail,
			String studentMobile, String studentDOB, String studentState, String studentCity,
			String studentYearQualified, String password, String studentBatchId) {
		super();
		this.studentFirstName = studentFirstName;
		this.studentLastName = studentLastName;
		this.studentMiddleName = studentMiddleName;
		this.studentEmail = studentEmail;
		this.studentMobile = studentMobile;
		this.studentDOB = studentDOB;
		this.studentState = studentState;
		this.studentCity = studentCity;
		this.studentYearQualified = studentYearQualified;
		this.password = password;
		this.studentBatchId = studentBatchId;
	}

	public Student(String studentFirstName, String studentLastName, String studentEmail, String studentMobile,
			String studentState, String studentCity) {
		super();
		this.studentFirstName = studentFirstName;
		this.studentLastName = studentLastName;
		this.studentEmail = studentEmail;
		this.studentMobile = studentMobile;
		this.studentState = studentState;
		this.studentCity = studentCity;
	}

	

}
