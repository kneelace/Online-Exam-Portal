package com.lnt.core.daos;

import java.util.ArrayList;

import com.lnt.core.exceptions.StudentException;
import com.lnt.core.models.Exam;
import com.lnt.core.models.Question;
import com.lnt.core.models.Result;
import com.lnt.core.models.Student;

public interface StudentDao {
	public Student insertNewStudent(Student student, String strStudentEmail, String strStudentPassword) throws StudentException;
	
	public Integer authenticate(String studentId, String studentPass) throws StudentException;
	
	public ArrayList<Exam> getExamListByStudentId(Integer studentId) throws StudentException;
	
	public ArrayList<Question> getQuestionByExamId(Integer examId) throws StudentException;
	
	public String updateStudentScore(Integer examId, Integer studentId, Integer resultScore) throws StudentException;
	
	public ArrayList<Result> viewResultsOfStudentId(Integer studentId) throws StudentException;
	
}
