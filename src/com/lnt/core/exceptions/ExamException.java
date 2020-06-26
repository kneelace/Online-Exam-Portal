package com.lnt.core.exceptions;

public class ExamException extends Exception {
	
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 8375590120705785236L;

	/**
	 * 
	 */
	
	
	

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public ExamException(String message, Throwable cause) {
		super(message, cause);
	}

	public ExamException(String message) {
		super(message);
	}
}
