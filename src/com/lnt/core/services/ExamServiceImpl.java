package com.lnt.core.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lnt.core.daos.ExamDao;
import com.lnt.core.exceptions.ExamException;
import com.lnt.core.models.Exam;
import com.lnt.core.models.Result;

@Service
public class ExamServiceImpl implements ExamService {

	@Autowired
	private ExamDao dao;
	
	@Override
	public ArrayList<Exam> getExamList() throws ExamException {
		// TODO Auto-generated method stub
		return dao.getExamList();
	}

	@Override
	public ArrayList<String> getBatchList() throws ExamException {
		// TODO Auto-generated method stub
		return dao.getBatchList();
	}

	@Override
	public ArrayList<Integer> getStudentIdList(String batchId) throws ExamException {
		// TODO Auto-generated method stub
		return dao.getStudentIdList(batchId);
	}

	@Override
	public String addStudentsToResult(Integer examId, String batchId, String dateOfExam, List<Integer> studentIdList)
			throws ExamException {
		return dao.addStudentsToResult(examId, batchId, dateOfExam, studentIdList);
		
	}

	@Override
	public ArrayList<Exam>  getFilePathList() throws ExamException {
		// TODO Auto-generated method stub
		return dao.getFilePathList();
	}

	@Override
	public String removeQuestions(Integer examId) throws ExamException {
		// TODO Auto-generated method stub
		return dao.removeQuestions(examId);
	}

	@Override
	public String createExam(String subject, String level, String passCriteria,String filePath) throws ExamException {
		// TODO Auto-generated method stub
		return dao.createExam(subject, level, passCriteria,filePath);
	}

}
