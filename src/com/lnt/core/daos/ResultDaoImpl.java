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

import com.lnt.core.exceptions.ResultException;
import com.lnt.core.models.Exam;
import com.lnt.core.models.Result;
import com.lnt.core.models.Student;


@Repository
/*@Transactional*/
public class ResultDaoImpl implements ResultDao {
	/*@PersistenceContext
	private EntityManager manager;*/
	
	@Resource(name = "jdbcTemplate") // without name may go by type by default
	private JdbcTemplate template;
	
	
	@Override
	public ArrayList<Student> getResultList(String technology,String level,String state,String city) throws ResultException {
		/*TypedQuery<Result> query= (TypedQuery<Result>)manager.createQuery("SELECT S.STUDENT_STATE,S.STUDENT_CITY,E.SUBJECT,E.EXAM_LEVEL,R.RESULT_SCORE FROM STUDENT S,EXAM E,RESULTS R WHERE R.STUDENT_ID=S.STUDENT_ID AND R.EXAM_ID=E.EXAM_ID");
		 * select r.student_id from results r,exam e where r.exam_id = e.exam_id;
		
		TypedQuery<Result> query= manager.createQuery("select r from Result r, Student s, ",Result.class,Student.class,Exam.class);
		 List<Result> resultList = query.getResultList();
		 List l =(List) manager.createQuery("SELECT r.studentId from Result r,Exam e WHERE r.examId = e.examId",Result.class).getResultList();
		 //System.out.println(manager.createQuery("SELECT s.studentFirstname,s.studentLastname,s.studentState,s.studentCity,s.studentEmail,s.studentMobile,e.subject FROM Student s, Result r WHERE r.studentId = s.studentId").getResultList());
		 System.out.println(l);
	  return l;*/
		
		String studentIdListQry = "select r.student_id from results r,exam e where r.exam_id = e.exam_id and e.subject='"+technology+"' and e.exam_level='"+level+"' and r.result_status='pass'";

		List<Map<String, Object>> studentIdlist = template.queryForList(studentIdListQry, new Object[] {});
		
		/*System.out.println(studentIdlist);*/
		ArrayList<Student> studentList = new ArrayList<>();

		
		for (Map<String, Object> item : studentIdlist) {
			
			BigDecimal bdStudentObjectId = (BigDecimal) item.get("student_id");
			Integer studentObjectId = bdStudentObjectId.intValue();
			
			String studentListQry = "select * from student where student_id="+studentObjectId+" and student_state='"+state+"' and student_city='"+city+"'";
			
			List<Map<String, Object>> studentObjectList = template.queryForList(studentListQry, new Object[] {});
			
			/*System.out.println(studentObjectList);*/
		
			for (Map<String, Object> studentItem : studentObjectList) {
				
				BigDecimal bdStudentId = (BigDecimal) studentItem.get("student_id");
				Integer studentId = bdStudentId.intValue();
				
				String studentFname = (String) studentItem.get("student_firstname");
				String studentLname = (String) studentItem.get("student_lastname");
				String studentEmail = (String) studentItem.get("student_email");
				String studentMobile = (String) studentItem.get("student_mobile");
				String studentCity = (String) studentItem.get("student_city");
				String studentState = (String) studentItem.get("student_state");
			
				Student student = new Student(studentFname, studentLname, studentEmail, studentMobile, studentState, studentCity);

				studentList.add(student);
			}
			
			
		}
		/*System.out.println(studentList);*/
		return studentList;
	}
}