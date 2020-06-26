package com.lnt.core.daos;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.lnt.core.exceptions.ExamException;
import com.lnt.core.models.Exam;
import com.lnt.core.models.Result;

@Repository
public class ExamDaoImpl implements ExamDao {

	@Resource(name = "jdbcTemplate") // without name may go by type by default
	private JdbcTemplate template;

	@Override
	public ArrayList<Exam> getExamList() {

		String qry = "SELECT exam_id,exam_level,subject,file_path,passing_criteria FROM EXAM where exam_level='l1'";

		List<Map<String, Object>> list = template.queryForList(qry, new Object[] {});
		ArrayList<Exam> examList = new ArrayList<>();

		for (Map<String, Object> item : list) {
			BigDecimal bdExamId = (BigDecimal) item.get("exam_id");
			Integer examId = bdExamId.intValue();

			String examLevel = (String) item.get("exam_level");

			String examSubject = (String) item.get("subject");

			String filepath = (String) item.get("file_path");

			BigDecimal bdPassCriteria = (BigDecimal) item.get("passing_criteria");
			Integer passCriteria = bdPassCriteria.intValue();

			Exam exam = new Exam(examId, examLevel, examSubject, filepath, passCriteria);

			examList.add(exam);

		}
		System.out.println(examList);
		return examList;
	}

	@Override
	public ArrayList<String> getBatchList() throws ExamException {
		String qry = "select distinct(student_batch_id) from student";

		List<Map<String, Object>> list = template.queryForList(qry, new Object[] {});
		ArrayList<String> batchList = new ArrayList<>();
		for (Map<String, Object> item : list) {

			String studentBatchId = (String) item.get("student_batch_id");

			batchList.add(studentBatchId);
		}

		return batchList;
	}

	@Override
	public ArrayList<Integer> getStudentIdList(String batchId) throws ExamException {
		String qry = "select student_id from student where student_batch_id=?";

		List<Map<String, Object>> list = template.queryForList(qry, new Object[] { batchId });

		ArrayList<Integer> studentIdList = new ArrayList<>();
		for (Map<String, Object> item : list) {

			BigDecimal bdstudentBatchId = (BigDecimal) item.get("student_id");
			Integer studentBatchId = bdstudentBatchId.intValue();

			studentIdList.add(studentBatchId);
		}

		return studentIdList;

	}

	@Override
	public String addStudentsToResult(Integer examId, String batchId, String dateOfExam, List<Integer> studentIdList)
			throws ExamException {
		// TODO Auto-generated method stub
		// System.out.println(examId+" "+batchId+" "+dateOfExam+" "+studentIdList);

		Iterator itr = studentIdList.iterator();
		// int resultId = 7; // temporary resultId, need to create sequence for resultId
		while (itr.hasNext()) {

			Integer studentId = (Integer) itr.next();

			String res_seq = "select results_seq.nextval from dual"; // temporary examId, need to create sequence for
																		// resultId
			Long resultId = template.queryForObject(res_seq, new Object[] {}, Long.class);

			template.update("INSERT INTO results (result_id, exam_id,student_id,date_of_exam) VALUES (?, ?, ?, ?)",
					resultId, examId, studentId, dateOfExam);

		}

		return "Success Result Dao";
	}

	@Override
	public ArrayList<Exam> getFilePathList() throws ExamException {
		String qry = "select exam_id,file_path from exam";

		List<Map<String, Object>> list = template.queryForList(qry, new Object[] {});
		System.out.println(list);
		ArrayList<Exam> filePathList = new ArrayList<>();
		for (Map<String, Object> item : list) {

			BigDecimal bdexamId = (BigDecimal) item.get("exam_id");
			Integer examId = bdexamId.intValue();

			String filePath = (String) item.get("file_path");
			Exam exam = new Exam(examId, filePath);

			filePathList.add(exam);
		}
		System.out.println(filePathList);
		return filePathList;
	}

	@Override
	public String removeQuestions(Integer examId) throws ExamException {
		template.update("DELETE FROM QUESTIONS WHERE EXAM_ID = ?", examId);

		return "Success";
	}

	@Override
	public String createExam(String subject, String level, String passCriteria, String filePath) {

		String sql = "select exam_seq.nextval from dual"; // temporary examId, need to create sequence for resultId
		Long examId = template.queryForObject(sql, new Object[] {}, Long.class);
		// String filePath = "dude.xls";
		template.update(
				"INSERT INTO exam (EXAM_ID, EXAM_LEVEL,SUBJECT,FILE_PATH,PASSING_CRITERIA) VALUES (? , ?, ?, ?, ?)",
				examId, level, subject, filePath, passCriteria);

		// RETURN EXAM_ID
		return Long.toString(examId);
	}

}
