package com.lnt.core.daos;

import java.util.ArrayList;
import java.util.List;

import com.lnt.core.exceptions.ExamException;
import com.lnt.core.models.Exam;
import com.lnt.core.models.Result;

public interface ExamDao  {
	ArrayList<Exam> getExamList() throws ExamException;
	ArrayList<String> getBatchList() throws ExamException;
	ArrayList<Integer> getStudentIdList(String batchId) throws ExamException;
	String removeQuestions(Integer examId) throws ExamException;
	String addStudentsToResult(Integer examId,String batchId,String dateOfExam,List<Integer> studentIdList) throws ExamException;
	ArrayList<Exam>  getFilePathList() throws ExamException;
	
	String createExam(String subject, String level, String passCriteria,String filePath) throws ExamException;
}
