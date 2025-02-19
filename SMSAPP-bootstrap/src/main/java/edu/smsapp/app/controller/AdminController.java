package edu.smsapp.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import edu.smsapp.app.model.Student;
import edu.smsapp.app.servicei.StudentServiceI;

@Controller
public class AdminController {

	@Autowired
	StudentServiceI ssi;
	
	@RequestMapping("/")
	public String openlogin() {
		return "Login";
	}
	
	@RequestMapping("/log")
	public String postlogin(@RequestParam("username") String un ,@RequestParam("password") String ps , Model m) {
		if(un.equals("admin") && ps.equals("admin"))
		{
		List<Student> students=ssi.getAllStudents();
		m.addAttribute("data", students);
		return "adminscreen";
		}
		else {
			m.addAttribute("invalid","Login Failed! Wrong email or password");
			return "Login";
		}
	}
	
	@RequestMapping("/enroll_student")
	public String saveInfo(@ModelAttribute Student s,Model m) {
		ssi.saveStudent(s);
		List<Student> students=ssi.getAllStudents();
		m.addAttribute("data", students);
		return "adminscreen";
	}
	
	@RequestMapping("/search")
	public String SearchByBatch(@RequestParam("batchNumber") String bn,Model m) {
		
		List<Student> result=ssi.getStudentsByBatch(bn);
		if(result.size()>0) {
		m.addAttribute("data", result);
		}
		else {
			List<Student> students=ssi.getAllStudents();
			m.addAttribute("data", students);
			m.addAttribute("message", "No Data available for the batch : "+bn+"....!");
		}
		return "adminscreen";
	}
		
	@RequestMapping("/fees")
	public String openFeesPage(@RequestParam("studentId") int id , Model m)
	{
		Student s=ssi.getStudentData(id);
		m.addAttribute("st", s);
		return "PayFees";
	}
	
	@RequestMapping("/payfees")
	public String pay(@RequestParam("studentid") int studentid , @RequestParam("ammount") float amount , Model m) {
		List<Student> list=ssi.updateStudent(studentid,amount);
		m.addAttribute("data", list);
		return "adminscreen";
	}
	
	@RequestMapping("/remove")
	public String removeData(@RequestParam("studentId") int studentid,Model m) {
		List<Student> students=ssi.removeStudent(studentid);
		m.addAttribute("data", students);
		return "adminscreen";
	}
	
	@RequestMapping("/shift")
	public String onShiftBatch(@RequestParam("studentId") int id , Model m) {
		Student s=ssi.getStudentData(id);
		m.addAttribute("st", s);
		return "batch";
	}

	@RequestMapping("/batchshift")
	public String pay(@RequestParam("studentid") int studentid , @RequestParam("batchNumber") String batchNumber , Model m) {
		
		List<Student> list=ssi.updateStudentBatch(studentid,batchNumber);
		m.addAttribute("data", list);
		return "adminscreen";
	}
}
