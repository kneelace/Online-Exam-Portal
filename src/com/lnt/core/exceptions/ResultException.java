package com.lnt.core.exceptions;

public class ResultException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4022952204276385096L;

	public ResultException(String message, Throwable cause) {
		super(message, cause);
		
	}

	public ResultException(String message) {
		super(message);
	
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}


}