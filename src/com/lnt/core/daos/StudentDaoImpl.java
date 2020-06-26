package com.lnt.core.daos;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.lnt.core.exceptions.StudentException;
import com.lnt.core.models.Authenticator;
import com.lnt.core.models.Exam;
import com.lnt.core.models.Question;
import com.lnt.core.models.Result;
import com.lnt.core.models.Student;

@Repository
@Transactional
public class StudentDaoImpl implements StudentDao {

	@PersistenceContext // this di is mandatory for entity manager of jpa
	private EntityManager manager;

	@Resource(name = "jdbcTemplate") // without name may go by type by default
	private JdbcTemplate template;

	@Override
	public Student insertNewStudent(Student student, String strStudentEmail, String strStudentPassword) throws StudentException {
		manager.persist(student);
		
		String sql="select student_seq.CURRVAL from dual";
		
		Integer student_id = template.queryForObject(sql, Integer.class);
		
		//set studentid in suthenticate;
		
		Authenticator authenticate = new Authenticator(student_id,strStudentEmail,strStudentPassword);
		manager.persist(authenticate);

		return student;

	}

	@Override
	public Integer authenticate(String username, String studentPass) throws StudentException {
		String sql = "Select * from authentication";
		
		List<Map<String, Object>> list = template.queryForList(sql, new Object[] {});

		for (Map<String, Object> item : list) {

			BigDecimal bdStudentId = (BigDecimal) item.get("STUDENT_ID");
			Integer studentId = bdStudentId.intValue();
			
			String uname = (String) item.get("USER_NAME");
			String pass = (String) item.get("PASSWORD");

			if (uname.equals(username) && pass.equals(studentPass)) {

				return studentId;
			}

		}
		return 0;
	}

	@Override
	public ArrayList<Exam> getExamListByStudentId(Integer studentId) throws StudentException {

		System.out.println("inside getExamListByStudentId studentid= "+studentId);
		String examsql = "Select * from results where STUDENT_ID=" + studentId + " and RESULT_SCORE is null"; // score
																												// constraint
																												// left

		ArrayList<Exam> examSubjectList = new ArrayList<>();

		List<Map<String, Object>> examList = template.queryForList(examsql, new Object[] {});
		System.out.println(examList);
		
		for (Map<String, Object> item : examList) {

			BigDecimal bdExamId = (BigDecimal) item.get("EXAM_ID");
			Integer examId = bdExamId.intValue();

			String examsubjectsql = "select * from exam where exam_id=" + examId;
			List<Map<String, Object>> subjectList = template.queryForList(examsubjectsql, new Object[] {});
			System.out.println(subjectList);
			for (Map<String, Object> examItem : subjectList) {

				BigDecimal bdSubExamId = (BigDecimal) examItem.get("exam_id");
				Integer subExamId = bdSubExamId.intValue();

				String examLevel = (String) examItem.get("exam_level");

				String examSubject = (String) examItem.get("subject");

				String filepath = (String) examItem.get("file_path");

				BigDecimal bdPassCriteria = (BigDecimal) examItem.get("passing_criteria");
				Integer passCriteria = bdPassCriteria.intValue();

				Exam exam = new Exam(subExamId, examLevel, examSubject, filepath, passCriteria);

				examSubjectList.add(exam);
			}

		}
		System.out.println(examSubjectList);
		return examSubjectList;
	}

	@Override
	public ArrayList<Question> getQuestionByExamId(Integer examIdOfQuestions) throws StudentException {

		String questionSql = "select * from questions where exam_id=" + examIdOfQuestions;
		List<Map<String, Object>> questionList = template.queryForList(questionSql, new Object[] {});

		ArrayList<Question> listOfQuestions = new ArrayList<>();

		for (Map<String, Object> questionItem : questionList) {

			BigDecimal bdQuestionId = (BigDecimal) questionItem.get("QUESTION_ID");
			String quesId = Integer.toString(bdQuestionId.intValue());

			BigDecimal bdExamId = (BigDecimal) questionItem.get("EXAM_ID");
			String examId = Integer.toString(bdExamId.intValue());

			String quesDesc = (String) questionItem.get("QUESTION_DESC");
			String option1 = (String) questionItem.get("option1");
			String isSolution1 = (String) questionItem.get("isSolution1");
			String option2 = (String) questionItem.get("option2");
			String isSolution2 = (String) questionItem.get("isSolution2");
			String option3 = (String) questionItem.get("option3");
			String isSolution3 = (String) questionItem.get("isSolution3");
			String option4 = (String) questionItem.get("option4");
			String isSolution4 = (String) questionItem.get("isSolution4");

			Question question = new Question(quesId, examId, quesDesc, option1, isSolution1, option2, isSolution2,
					option3, isSolution3, option4, isSolution4);

			listOfQuestions.add(question);
		}

		return listOfQuestions;
	}

	@Override
	public String updateStudentScore(Integer examId, Integer studentId, Integer resultScore) throws StudentException {
		// TODO Auto-generated method stub
		String pass_criteriaSql = "select PASSING_CRITERIA from exam where exam_id=" + examId;
		Integer pass_criteria = (Integer) template.queryForObject(pass_criteriaSql, new Object[] {}, Integer.class);

		String result_status;

		if (resultScore >= pass_criteria) {
			result_status = "pass";
		} else {
			result_status = "fail";
		}

		String updateScoreSql = "update results set RESULT_SCORE =" + resultScore + ",RESULT_STATUS='" + result_status
				+ "' where EXAM_ID=" + examId + " AND STUDENT_ID=" + studentId;

		template.update(updateScoreSql);

		return result_status;
	}

	@Override
	public ArrayList<Result> viewResultsOfStudentId(Integer studentId) throws StudentException {
		// TODO Auto-generated method stub
		
		String resultSql= "select * from results where STUDENT_ID="+studentId;
		
		List<Map<String, Object>> resultObjectList = template.queryForList(resultSql, new Object[] {});
		

		
		ArrayList<Result> resultList = new ArrayList<Result>();
		
		for (Map<String, Object> item : resultObjectList) {

			
			Integer resultId = ((BigDecimal) item.get("RESULT_ID")).intValue();
			
		
			//Integer examId = ((BigDecimal) item.get("EXAM_ID")).intValue();
			
			Integer resultScore = ((BigDecimal) item.get("RESULT_SCORE")).intValue();
			
			String resultStatus = (String) item.get("RESULT_STATUS");
			String dateOfExam = (String) item.get("DATE_OF_EXAM");

			Result result = new Result(resultId,resultScore,resultStatus,dateOfExam);
		
			resultList.add(result);
		}
	
		return resultList;
	}
}
