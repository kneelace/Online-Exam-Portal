package com.lnt.web.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lnt.core.exceptions.ExamException;
import com.lnt.core.exceptions.ResultException;
import com.lnt.core.exceptions.StudentException;
import com.lnt.core.models.Authenticator;
import com.lnt.core.models.Exam;
import com.lnt.core.models.Student;
import com.lnt.core.services.ExamService;
import com.lnt.core.services.ResultService;

@Controller
@RequestMapping("/admin")
public class AdminModule {
	HttpSession sess;

	@Autowired
	private ExamService examservice;

	@Autowired
	private ResultService resultService;

	@RequestMapping("/login")
	
	public String getAdminLoginPage() {
		return "AdminLogin";
	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		sess = request.getSession(false);
		sess.invalidate();
		return "redirect:/";
	}

	@RequestMapping("/adminProfile")
	//@ExceptionHandler({ExamException.class,ResultException.class,StudentException.class})
	public String getAdminProfilePage(@ModelAttribute("login") Authenticator authenticate,  HttpServletRequest request,  BindingResult result,
		Model model, HttpSession session) {
		String adminId = request.getParameter("adminId");
		String adminPass = request.getParameter("adminPassword");
		String captcha = request.getParameter("captcha");

		String sesscaptcha = (String) session.getAttribute("CAPTCHA");
		System.out.println(sesscaptcha);

		//String viewpage;

		if (adminId == null || adminId.equals("")) {
			authenticate.setCaptcha("");
			model.addAttribute("message", "Admin Id is required");
			return "AdminLogin";
		}

		else if (adminPass == null || adminPass.equals("")) {
			authenticate.setCaptcha("");
			model.addAttribute("message", "Password is required");
			return "AdminLogin";
		}

		else if (sesscaptcha == null || (sesscaptcha != null && !sesscaptcha.equals(captcha))) {
			authenticate.setCaptcha("");
			model.addAttribute("message", "Captcha does not match");
			return "AdminLogin";
		}

		else if (adminId.equals("backdoor@gmail.com") && adminPass.equals("ddd")) {
			System.out.println("user id and password matches");
			model.addAttribute("adminId", adminId);
			return "AdminProfile";

		} else if ((sesscaptcha != null && sesscaptcha.equals(captcha)) && (adminId != null && adminPass != null)) {
			// Integer studentId = studentService.authenticate(studentUsername,
			// studentPass);
			if (adminId.equals("admin@admin.com") && adminPass.equals("123")) {
				//viewpage = "AdminProfile";
				System.out.println(adminId);
				sess = request.getSession(false);
				sess.setAttribute("adminId", adminId);
				return "AdminProfile";

			}

			/*
			 * if (authenticate.getStudentEmail().equals("guest") &&
			 * authenticate.getPassword().equals("ddd")) {
			 * System.out.println("user id and password matches");
			 * model.addAttribute("loginId", authenticate.getStudentEmail()); return "home";
			 * 
			 * }
			 */

			else {
				authenticate.setCaptcha("");
				model.addAttribute("message", "User ID or Password Incorrect");
				return "AdminLogin";
			}
		}
		return "Error";

		
	}

	/*
	 * @RequestMapping("/createExam") public String createExamPage() {
	 * 
	 * return "CreateExam"; }
	 */

	@RequestMapping("/viewReports")
	public String getviewquestionsPage() {
		return "ViewReports";
	}

	@RequestMapping("/searchStudents")
	public ModelAndView getviewReportsPageList(HttpServletRequest request) {
		/*
		 * try { List resultList = resultService.fetchRecords();
		 * 
		 * mnv = new ModelAndView(); mnv.addObject("resultList",resultList);
		 * mnv.setViewName("resultList");
		 * 
		 * } catch (ResultException resultException) {
		 * resultException.printStackTrace(); }
		 */
		String technology = request.getParameter("technology");
		String level = request.getParameter("level");
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		ModelAndView mnv = null;

		try {
			ArrayList<Student> studentList = resultService.fetchRecords(technology, level, state, city);
			mnv = new ModelAndView();
			mnv.addObject("studentList", studentList);
			mnv.setViewName("StudentsReport");
		} catch (ResultException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mnv;
	}

	@RequestMapping("/allocateByBatch")
	public ModelAndView allocateExamByBatch() {
		ModelAndView mnv = null;
		try {
			List<Exam> examList = examservice.getExamList();

			mnv = new ModelAndView();
			mnv.addObject("examList", examList);

			List<String> batchList = examservice.getBatchList();
			mnv.addObject("batchList", batchList);
			mnv.setViewName("AllocateByBatch");

		} catch (ExamException e) {

			e.printStackTrace();
		}
		return mnv;

	}

	@RequestMapping("/batchAllocation")
	public String batchAllocation(HttpServletRequest request) {

		Integer examId = Integer.parseInt(request.getParameter("examId"));

		String batchId = request.getParameter("batchId");
		String dateOfExam = request.getParameter("dateOfExam");

		System.out.println(examId + " " + batchId + " " + dateOfExam);

		try {
			List<Integer> studentIdList = examservice.getStudentIdList(batchId);
			String r = examservice.addStudentsToResult(examId, batchId, dateOfExam, studentIdList);
		} catch (ExamException e) {

			e.printStackTrace();
		}
		return "AdminProfile";
	}

	@RequestMapping("/removeQuestions")
	public ModelAndView removeQuestions(HttpServletRequest request) {

		ModelAndView mnv = null;

		try {
			ArrayList<Exam> filePathList = examservice.getFilePathList();
			System.out.println(filePathList);
			mnv = new ModelAndView();
			mnv.addObject("filePathList", filePathList);
			mnv.setViewName("RemoveQuestions");
		} catch (ExamException e) {

			e.printStackTrace();
		}
		return mnv;
	}

	@RequestMapping("/questionRemoval")
	public String questionRemoval(HttpServletRequest request) {

		Integer examId = Integer.parseInt(request.getParameter("examId"));

		try {
			String questionList = examservice.removeQuestions(examId);

		} catch (ExamException e) {

			e.printStackTrace();
		}
		return "AdminProfile";
	}

	@RequestMapping("/aboutUs")
	public String getToKnowAboutUs() {
		return "AboutUs";
	}

}
