package com.lnt.core.daos;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.lnt.core.models.Question;

@Repository
public class FileUploadDao extends BaseDAO {
	
	@Resource(name = "jdbcTemplate") // without name may go by type by default
	private JdbcTemplate template;

	public boolean saveFileDataInDB(List<Question> questionList, String examId) {
		
		String sql = "insert into QUESTIONS (question_id, exam_id, question_desc, option1, issolution1, option2, issolution2, option3, issolution3, option4, issolution4) VALUES(:quesId, :examId, :quesDesc,:option1, :isSolution1, :option2, :isSolution2, :option3 ,:isSolution3 ,:option4 , :isSolution4)";
		
		try {
			List<Map<String, String>> batchUpdateParams = new ArrayList<>();
			
			for (Question ques : questionList) {
				String seq = "select questions_seq.nextval from dual";  // temporary examId, need to create sequence for resultId
				Long quesId = template.queryForObject(seq, new Object[] {}, Long.class);
				
				Map<String,String> paramMap = new HashMap<>();
				paramMap.put("quesId",Long.toString(quesId));
				paramMap.put("examId", examId);
				paramMap.put("quesDesc", ques.getQuesDesc());
				paramMap.put("option1", ques.getOption1());
				paramMap.put("isSolution1", ques.getIsSolution1());
				paramMap.put("option2", ques.getOption2());
				paramMap.put("isSolution2", ques.getIsSolution2());
				paramMap.put("option3", ques.getOption3());
				paramMap.put("isSolution3", ques.getIsSolution3());
				paramMap.put("option4", ques.getOption4());
				paramMap.put("isSolution4", ques.getIsSolution4());
			
				batchUpdateParams.add(paramMap);
				
			}

			getNamedParamJdbcTemplate().batchUpdate(sql, batchUpdateParams.toArray(new Map[batchUpdateParams.size()]));

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

		return true;

	}

}