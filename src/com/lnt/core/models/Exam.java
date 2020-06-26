package com.lnt.core.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="EXAM")
@SequenceGenerator(name="exam_seq", sequenceName="exam_seq", allocationSize=1)
public class Exam {
	@Id
	@Column(name="exam_id")
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="exam_seq")
	private Integer examId;
	
	@Column(name="exam_level")
	private String examLevel;
	
	@Column(name="subject")
	private String subject;
	
	@Column(name="file_path")
	private String filePath ;
	
	@Column(name="passing_criteria")
	private Integer passingCriteria;
	
	public Exam() {
	
	}
	public Exam(Integer examId, String examLevel, String subject, String filePath, Integer passingCriteria) {
		super();
		this.examId = examId;
		this.examLevel = examLevel;
		this.subject = subject;
		this.filePath = filePath;
		this.passingCriteria = passingCriteria;
	}
	@Override
	public String toString() {
		return "Exam [examId=" + examId + ", examLevel=" + examLevel + ", subject=" + subject + ", filePath=" + filePath
				+ ", passingCriteria=" + passingCriteria + "]";
	}
	@Id
	@Column(name="exam_id")
	public Integer getExamId() {
		return examId;
	}
	public void setExamId(Integer examId) {
		this.examId = examId;
	}
	@Column(name="exam_level")
	public String getExamLevel() {
		return examLevel;
	}
	public void setExamLevel(String examLevel) {
		this.examLevel = examLevel;
	}
	@Column(name="subject")
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	@Column(name="file_path")
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	@Column(name="passing_criteria")
	public Integer getPassingCriteria() {
		return passingCriteria;
	}
	public void setPassingCriteria(Integer passingCriteria) {
		this.passingCriteria = passingCriteria;
	}
	public Exam(Integer examId, String filePath) {
		super();
		this.examId = examId;
		this.filePath = filePath;
	}
	
	
}
