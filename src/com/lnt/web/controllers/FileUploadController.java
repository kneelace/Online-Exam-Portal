package com.lnt.web.controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lnt.core.exceptions.ExamException;
import com.lnt.core.services.ExamService;
import com.lnt.core.services.FileUploadService;

@Controller
@RequestMapping(value="/admin")
public class FileUploadController {

	@Autowired
	FileUploadService uploadService;
	
	@Autowired
	ExamService examService;

	@RequestMapping(value = "/createExam", method = RequestMethod.GET)
	public ModelAndView index() {
		return new ModelAndView("upload");
	}

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public ModelAndView singleFileUpload(@RequestParam("file") MultipartFile file,
			RedirectAttributes redirectAttributes,HttpServletRequest request) throws ExamException{
				
		if (file.isEmpty()) {
			redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
			return new ModelAndView("upload", "message", "Please select a file to upload");
		}

		try {

			String subject = request.getParameter("technology");
			String level= request.getParameter("level");
			String passCriteria= request.getParameter("pass_criteria");
			System.out.println(subject+" "+level+" "+passCriteria);
			String filePath = file.getOriginalFilename();
			
			String examId = examService.createExam(subject, level, passCriteria,filePath);
			
			// Get the file and save it somewhere
			
			byte[] bytes = file.getBytes();
			
			Path path = Paths.get("C://temp//" + file.getOriginalFilename());
			Files.write(path, bytes);
			
			uploadService.uploadFileData("C://temp//" + path.getFileName(),examId);

			redirectAttributes.addFlashAttribute("message",
					"You successfully uploaded '" + file.getOriginalFilename() + "'");

		} catch (IOException e) {
			redirectAttributes.addFlashAttribute("message",
					"Failure occured during upload '" + file.getOriginalFilename() + "'");
			e.printStackTrace();
		}
		
		return new ModelAndView("upload", "message", "You successfully uploaded '" + file.getOriginalFilename() + "'");
	}
}