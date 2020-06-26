package com.lnt.core.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "RESULTS")
public class Result {

	//private Student student;
	//private Exam exam;

	@Id
	@Column(name = "result_id")
	private Integer resultId;
	
	@Column(name = "result_score")
	private Integer resultScore;
	
	@Column(name = "result_status")
	private String resultStatus;
	
	@Column(name = "date_of_exam")
	private String dateOfExam;
	
	@Column(name = "exam_id")
	private Integer examId;
	
	@Column(name = "student_id")
	private Integer studentId;

	

/*	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Exam getExam() {
		return exam;
	}

	public void setExam(Exam exam) {
		this.exam = exam;
	}
*/
	public Integer getResultId() {
		return resultId;
	}

	public void setResultId(Integer resultId) {
		this.resultId = resultId;
	}

	public Integer getResultScore() {
		return resultScore;
	}

	public void setResultScore(Integer resultScore) {
		this.resultScore = resultScore;
	}

	public String getResultStatus() {
		return resultStatus;
	}

	public void setResultStatus(String resultStatus) {
		this.resultStatus = resultStatus;
	}

	public String getDateOfExam() {
		return dateOfExam;
	}

	public void setDateOfExam(String dateOfExam) {
		this.dateOfExam = dateOfExam;
	}

	public Integer getExamId() {
		return examId;
	}

	public void setExamId(Integer examId) {
		this.examId = examId;
	}

	public Integer getStudentId() {
		return studentId;
	}

	public void setStudentId(Integer studentId) {
		this.studentId = studentId;
	}

	public Result(Integer resultId, Integer resultScore, String resultStatus, String dateOfExam) {
		super();
		this.resultId = resultId;
		this.resultScore = resultScore;
		this.resultStatus = resultStatus;
		this.dateOfExam = dateOfExam;
	}

/*	@Override
	public String toString() {
		return "Result [student=" + student + ", exam=" + exam + ", resultId=" + resultId + ", resultScore="
				+ resultScore + ", resultStatus=" + resultStatus + ", dateOfExam=" + dateOfExam + ", getStudent()="
				+ getStudent() + ", getExam()=" + getExam() + ", getResultId()=" + getResultId() + ", getResultScore()="
				+ getResultScore() + ", getResultStatus()=" + getResultStatus() + ", getDateOfExam()=" + getDateOfExam()
				+ "]";
	}*/

	
	public Result() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Result [resultId=" + resultId + ", resultScore=" + resultScore + ", resultStatus=" + resultStatus
				+ ", dateOfExam=" + dateOfExam + ", examId=" + examId + ", studentId=" + studentId + "]";
	}

	/*public Result(Student student, Exam exam, Integer resultId, Integer resultScore, String resultStatus,
			String dateOfExam) {
		super();
		this.student = student;
		this.exam = exam;
		this.resultId = resultId;
		this.resultScore = resultScore;
		this.resultStatus = resultStatus;
		this.dateOfExam = dateOfExam;
	}*/

}
