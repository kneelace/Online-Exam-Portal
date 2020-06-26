package com.lnt.core.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lnt.core.daos.StudentDao;
import com.lnt.core.exceptions.StudentException;
import com.lnt.core.models.Authenticator;
import com.lnt.core.models.Exam;
import com.lnt.core.models.Question;
import com.lnt.core.models.Result;
import com.lnt.core.models.Student;

@Service
@Transactional
public class StudentServiceImpl implements StudentService {
	@Autowired
	private StudentDao dao;
	

	@Override
	public Student registerForExam(Student student, String strStudentEmail, String strStudentPassword) throws StudentException {
	 return dao.insertNewStudent(student,strStudentEmail,strStudentPassword);
	}

	@Override
	public Integer authenticate(String studentId, String studentPass) throws StudentException {
		// TODO Auto-generated method stub
		return dao.authenticate(studentId, studentPass);
	}

	@Override
	public ArrayList<Exam> getExamListByStudentId(Integer studentId) throws StudentException {
		// TODO Auto-generated method stub
		return dao.getExamListByStudentId(studentId);
	}

	@Override
	public ArrayList<Question> getQuestionByExamId(Integer examId) throws StudentException {
		// TODO Auto-generated method stub
		return dao.getQuestionByExamId(examId);
	}

	@Override
	public String updateStudentScore(Integer examId, Integer studentId, Integer resultScore) throws StudentException {
		// TODO Auto-generated method stub
		return dao.updateStudentScore(examId, studentId, resultScore);
	}

	@Override
	public ArrayList<Result> viewResultsOfStudentId(Integer studentId) throws StudentException {
		// TODO Auto-generated method stub
		return dao.viewResultsOfStudentId(studentId);
	}

	
}
