package com.lnt.core.exceptions;

public class StudentException extends Exception{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7606178622936855630L;

	public StudentException(String message, Throwable cause) {
		super(message, cause);
	}

	public StudentException(String message) {
		super(message);
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
