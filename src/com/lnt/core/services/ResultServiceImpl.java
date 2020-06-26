package com.lnt.core.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.lnt.core.daos.ResultDao;
import com.lnt.core.exceptions.ResultException;
import com.lnt.core.models.Result;
import com.lnt.core.models.Student;

@Service
@Transactional(propagation = Propagation.REQUIRES_NEW)
public class ResultServiceImpl implements ResultService {
	@Autowired
	private ResultDao dao;
	@Override
	public ArrayList<Student> fetchRecords(String technology,String level,String state,String city) throws ResultException {
		return dao.getResultList(technology,level,state,city);
	}
 
}