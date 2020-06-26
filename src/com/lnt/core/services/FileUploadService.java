package com.lnt.core.services;

import java.io.File;
import java.io.FileInputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lnt.core.daos.FileUploadDao;
import com.lnt.core.models.Question;

@Service
public class FileUploadService {

	@Autowired
	FileUploadDao fileUploadDao;

	public String uploadFileData(String inputFilePath,String examId) {
		Workbook workbook = null;
		Sheet sheet = null;
		try {

			workbook = getWorkBook(new File(inputFilePath));
			System.out.println(inputFilePath);
			sheet = workbook.getSheetAt(0);

			/* Build the header portion of the Output File */
			String headerDetails = "QuesId,QuesDesc,Option1,IsSolution1,Option2,IsSolution2,Option3,IsSolution3,Option4,IsSolution4";
			String headerNames[] = headerDetails.split(",");

			/* Read and process each Row */
			ArrayList<Question> quesList = new ArrayList<>();
			Iterator<Row> rowIterator = sheet.iterator();
			Row row = rowIterator.next();
			while (rowIterator.hasNext()) {
				row = rowIterator.next();
				
				// Read and process each column in row
				
				Question ques = new Question();
				int count = 0;
				while (count < headerNames.length) {
					String methodName = "set" + headerNames[count];
					String inputCellValue = getCellValueBasedOnCellType(row, count++);
					setValueIntoObject(ques, Question.class, methodName, "java.lang.String",
							inputCellValue);
				}

				quesList.add(ques);
			}
			fileUploadDao.saveFileDataInDB(quesList,examId);

		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return "Success";
	}

	public static Workbook getWorkBook(File fileName) {
		Workbook workbook = null;
		try {
			String myFileName = fileName.getName();
			String extension = myFileName.substring(myFileName.lastIndexOf("."));
			if (extension.equalsIgnoreCase(".xls")) {
				workbook = new HSSFWorkbook(new FileInputStream(fileName));
			} else if (extension.equalsIgnoreCase(".xlsx")) {
				workbook = new XSSFWorkbook(new FileInputStream(fileName));
			}
		
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return workbook;
	}

	public static String getCellValueBasedOnCellType(Row rowData, int columnPosition) {
		String cellValue = null;
		Cell cell = rowData.getCell(columnPosition);
		if (cell != null) {
			if (cell.getCellType() == Cell.CELL_TYPE_STRING) {
				String inputCellValue = cell.getStringCellValue();
				if (inputCellValue.endsWith(".0")) {
					inputCellValue = inputCellValue.substring(0, inputCellValue.length() - 2);
				}
				cellValue = inputCellValue;
			} else if (cell.getCellType() == Cell.CELL_TYPE_NUMERIC) {
				Double doubleVal = new Double(cell.getNumericCellValue());
				cellValue = Integer.toString(doubleVal.intValue());
			}
		}
		return cellValue;
	}

	private static <T> void setValueIntoObject(Object obj, Class<T> clazz, String methodNameForField, String dataType,
			String inputCellValue) throws SecurityException, NoSuchMethodException, ClassNotFoundException,
			NumberFormatException, IllegalArgumentException, IllegalAccessException, InvocationTargetException {

		Method meth = clazz.getMethod(methodNameForField, Class.forName(dataType));
		T t = clazz.cast(obj);

		if ("java.lang.Double".equalsIgnoreCase(dataType)) {
			meth.invoke(t, Double.parseDouble(inputCellValue));
		} else if (!"java.lang.Integer".equalsIgnoreCase(dataType)) {
			meth.invoke(t, inputCellValue);
		} else {
			meth.invoke(t, Integer.parseInt(inputCellValue));
		}
	}

}