package com.lnt.core.daos;

import java.util.ArrayList;

import com.lnt.core.exceptions.ResultException;
import com.lnt.core.models.Student;


public interface ResultDao {
		ArrayList<Student> getResultList(String technology,String level,String state,String city) throws ResultException;
}