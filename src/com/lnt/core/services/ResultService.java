package com.lnt.core.services;

import java.util.ArrayList;

import com.lnt.core.exceptions.ResultException;
import com.lnt.core.models.Student;

public interface ResultService {

public ArrayList<Student> fetchRecords(String technology,String level,String state,String city) throws ResultException;
}