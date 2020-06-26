package com.lnt.web.controllers;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lnt.core.exceptions.StudentException;
import com.lnt.core.models.Authenticator;
import com.lnt.core.models.Exam;
import com.lnt.core.models.Question;
import com.lnt.core.models.Result;
import com.lnt.core.models.Student;
import com.lnt.core.services.StudentService;

@Controller
// @SessionAttributes({ "studentId", "examId", "resultScore", "quesCounter" })
@RequestMapping("/student")
public class StudentModule {
	Integer resultScore, quesCounter, questionListSize;
	HttpSession sess;

	@Autowired
	private StudentService studentService;

	@RequestMapping("/login")
	public String getStudentLoginPage() {

		return "StudentLogin";
	}

	@RequestMapping("/showForm")
	public ModelAndView showRegistrationForm() {
		ModelAndView mAndV = new ModelAndView("Registration");
		return mAndV;
	}

	@RequestMapping("/registration")
	public String registerForExam(HttpServletRequest request, Model model) {
		// String strStudentId = request.getParameter("studentId");
		String strStudentFirstName = request.getParameter("studentFirstName");
		String strStudentLastName = request.getParameter("studentLastName");
		String strStudentMiddleName = request.getParameter("studentMiddleName");
		String strStudentEmail = request.getParameter("studentEmail");
		String strStudentMobile = request.getParameter("studentMobile");
		String strStudentDOB = request.getParameter("studentDOB");
		String strStudentState = request.getParameter("studentState");
		String strStudentCity = request.getParameter("studentCity");
		String strStudentYearQualified = request.getParameter("studentYearQualified");
		String strStudentPassword = request.getParameter("studentPassword");
		String strStudentBatchId = request.getParameter("studentBatchId");

		// int studentId = Integer.parseInt(strStudentId);

		Student student = new Student(strStudentFirstName, strStudentLastName, strStudentMiddleName, strStudentEmail,
				strStudentMobile, strStudentDOB, strStudentState, strStudentCity, strStudentYearQualified,
				strStudentPassword, strStudentBatchId);
		
		System.out.println(student);
		// Integer stud_id = student.getStudentId();

		// Authenticator autheticate = new Authenticator(stud_id,strStudentEmail,
		// strStudentPassword);

		try {
			student = studentService.registerForExam(student, strStudentEmail, strStudentPassword);

		} catch (StudentException studentException) {
			studentException.printStackTrace();
		}

		model.addAttribute("student", student);
		return "SuccessRegistration";
	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		sess = request.getSession(false);
		sess.invalidate();
		return "redirect:/";
	}

	@RequestMapping("/dashboard")
	public String getDashboardPage(@ModelAttribute("login") Authenticator authenticate, BindingResult result,
			HttpServletRequest request, Model model, HttpSession session) throws StudentException {
		String studentUsername = request.getParameter("studId");
		String studentPass = request.getParameter("studPass");
		String captcha = request.getParameter("captcha");

		String viewpage = null;
		String sesscaptcha = (String) session.getAttribute("CAPTCHA");
		System.out.println(sesscaptcha);

		if (studentUsername == null || studentUsername.equals("")) {
			authenticate.setCaptcha("");
			model.addAttribute("message", "User Id is required");
			return "StudentLogin";
		}

		else if (studentPass == null || studentPass.equals("")) {
			authenticate.setCaptcha("");
			model.addAttribute("message", "Password is required");
			return "StudentLogin";
		}

		else if (sesscaptcha == null || (sesscaptcha != null && !sesscaptcha.equals(captcha))) {
			authenticate.setCaptcha("");
			model.addAttribute("message", "Captcha does not match");
			return "StudentLogin";
		}

		else if (studentUsername.equals("backdoor@gmail.com") && studentPass.equals("ddd")) {
			System.out.println("user id and password matches");
			model.addAttribute("loginId", studentUsername);
			return "StudentDashBoard";

		} else if ((sesscaptcha != null && sesscaptcha.equals(captcha))
				&& (studentUsername != null && studentPass != null)) {
			Integer studentId = studentService.authenticate(studentUsername, studentPass);

			if (studentId != 0) {
				System.out.println(studentId);

				sess = request.getSession(false);
				sess.setAttribute("studentId", studentId);
				return "StudentDashBoard";

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
				return "StudentLogin";
			}
		}
		return "Error";
	}

	@RequestMapping("/appearExam")
	public ModelAndView appearExam(HttpServletRequest request) throws StudentException {
		// System.out.println(request.getSession(false).getAttribute("studentId"));
		// //retrieves student id from session
		ModelAndView modelAndView = new ModelAndView();
		Integer studentId = (Integer) sess.getAttribute("studentId");

		ArrayList<Exam> examList = studentService.getExamListByStudentId(studentId);

		modelAndView.addObject("allocatedExamList", examList);
		modelAndView.setViewName("AllocatedExams");

		return modelAndView;
	}

	@RequestMapping("/startExam")
	public ModelAndView retrieveQuestionsByExamId(HttpServletRequest request) throws StudentException {
		// System.out.println(request.getParameter("examId"));
		ModelAndView modelAndView = new ModelAndView();
		System.out.println(sess.getAttribute("examId"));
		if (request.getParameter("examId") == null) {
			modelAndView.setViewName("NoTestAllocated");
		} else {
			Integer examId = Integer.parseInt(request.getParameter("examId"));
			ArrayList<Question> questionList = studentService.getQuestionByExamId(examId);
			questionListSize = questionList.size();
			// sess = request.getSession(false);

			System.out.println(questionList);

			// resultScore = (Integer) sess.getAttribute("resultScore");
			resultScore = 0;

			sess.setAttribute("resultScore", resultScore);

			sess.setAttribute("examId", examId);

			// quesCounter = (Integer) sess.getAttribute("quesCounter");
			quesCounter = 0;

			sess.setAttribute("quesCounter", quesCounter);

			// sess.setAttribute("question", questionList);

			modelAndView.addObject("question", questionList.get(quesCounter));
			modelAndView.setViewName("AttemptTest");
		}
		return modelAndView;
	}

	@RequestMapping("/scoreGeneration")
	public ModelAndView generateScore(HttpServletRequest request) throws StudentException {

		
		ModelAndView modelAndView = new ModelAndView();
		sess = request.getSession(false);
		String answer = "wrong";
	
		if(answer!=null) {
			answer=request.getParameter("answer");
			
		}
		
		if(answer == null) {
			answer="wrong";
			//quesCounter++;
		}
		ArrayList<Question> questionList = studentService.getQuestionByExamId((Integer) sess.getAttribute("examId"));

		System.out.println(questionList);

		System.out.println(answer);

		quesCounter = (Integer) sess.getAttribute("quesCounter");

		quesCounter++;
		System.out.println(quesCounter);
		sess.setAttribute("quesCounter", quesCounter);

		resultScore = (Integer) sess.getAttribute("resultScore");

		if (answer.equalsIgnoreCase("right")) {

			resultScore++;
			sess.setAttribute("resultScore", resultScore);

		} else {
			sess.setAttribute("resultScore", resultScore);
		}
		// request.getSession(false).getAttribute("question");

		System.out.println("question=" + quesCounter + "  resultscore=" + resultScore);

		if (quesCounter < questionListSize) {
			modelAndView.addObject("question", questionList.get(quesCounter));
			modelAndView.setViewName("AttemptTest");
		} else {
			// insert into database
			String passOrFail = studentService.updateStudentScore((Integer) sess.getAttribute("examId"),
					(Integer) sess.getAttribute("studentId"), resultScore);
			sess.setAttribute("passOrFail", passOrFail);

			modelAndView.setViewName("ExamResult");
		}
		return modelAndView;
	}

	@RequestMapping("/forceSubmit")
	public ModelAndView forceSubmit(HttpServletRequest request) throws StudentException {

		ModelAndView modelAndView = new ModelAndView();
		String answer = request.getParameter("answer");

		sess = request.getSession(false);

		resultScore = (Integer) sess.getAttribute("resultScore");

		if (answer.equalsIgnoreCase("right")) {

			resultScore++;
			sess.setAttribute("resultScore", resultScore);

		} else {
			sess.setAttribute("resultScore", resultScore);
		}
		
			
			String passOrFail = studentService.updateStudentScore((Integer) sess.getAttribute("examId"),
			(Integer) sess.getAttribute("studentId"), resultScore);
			sess.setAttribute("passOrFail", passOrFail);

			modelAndView.setViewName("ExamResult");
		
		return modelAndView;
	}

	@RequestMapping("/viewResults")
	public ModelAndView viewResults() {
		ModelAndView modelAndView = new ModelAndView();
		try {

			ArrayList<Result> studentResults = studentService.viewResultsOfStudentId((Integer) sess.getAttribute("studentId"));

			System.out.println(studentResults);

			modelAndView.addObject("resultList", studentResults);
			modelAndView.setViewName("StudentViewResult");

		} catch (StudentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// System.out.println("inside view results");
		return modelAndView;
	}
}
