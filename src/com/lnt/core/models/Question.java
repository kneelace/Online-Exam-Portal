package com.lnt.core.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

public class Question {

	private String quesId;

	private String examId;
	private String quesDesc;
	private String option1;
	private String isSolution1;
	private String option2;
	private String isSolution2;
	private String option3;
	private String isSolution3;
	private String option4;
	private String isSolution4;

	public String getExamId() {
		return examId;
	}

	public void setExamId(String examId) {
		this.examId = examId;
	}

	public String getQuesId() {
		return quesId;
	}

	public void setQuesId(String quesId) {
		this.quesId = quesId;
	}

	public String getQuesDesc() {
		return quesDesc;
	}

	public void setQuesDesc(String quesDesc) {
		this.quesDesc = quesDesc;
	}

	public String getOption1() {
		return option1;
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	public String getIsSolution1() {
		return isSolution1;
	}

	public void setIsSolution1(String isSolution1) {
		this.isSolution1 = isSolution1;
	}

	public String getOption2() {
		return option2;
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	public String getIsSolution2() {
		return isSolution2;
	}

	public void setIsSolution2(String isSolution2) {
		this.isSolution2 = isSolution2;
	}

	public String getOption3() {
		return option3;
	}

	public void setOption3(String option3) {
		this.option3 = option3;
	}

	public String getIsSolution3() {
		return isSolution3;
	}

	public void setIsSolution3(String isSolution3) {
		this.isSolution3 = isSolution3;
	}

	public String getOption4() {
		return option4;
	}

	public void setOption4(String option4) {
		this.option4 = option4;
	}

	public String getIsSolution4() {
		return isSolution4;
	}

	public void setIsSolution4(String isSolution4) {
		this.isSolution4 = isSolution4;
	}

	public Question(String quesId, String examId, String quesDesc, String option1, String isSolution1, String option2,
			String isSolution2, String option3, String isSolution3, String option4, String isSolution4) {
		super();
		this.quesId = quesId;
		this.examId = examId;
		this.quesDesc = quesDesc;
		this.option1 = option1;
		this.isSolution1 = isSolution1;
		this.option2 = option2;
		this.isSolution2 = isSolution2;
		this.option3 = option3;
		this.isSolution3 = isSolution3;
		this.option4 = option4;
		this.isSolution4 = isSolution4;
	}

	public Question() {
		super();
	}

	@Override
	public String toString() {
		return "Question [quesId=" + quesId + ", examId=" + examId + ", quesDesc=" + quesDesc + ", option1=" + option1
				+ ", isSolution1=" + isSolution1 + ", option2=" + option2 + ", isSolution2=" + isSolution2
				+ ", option3=" + option3 + ", isSolution3=" + isSolution3 + ", option4=" + option4 + ", isSolution4="
				+ isSolution4 + "]";
	}

}
