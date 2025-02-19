package edu.smsapp.app.serviceImpl;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import edu.smsapp.app.model.Student;
import edu.smsapp.app.repository.StudentRepository;
import edu.smsapp.app.servicei.StudentServiceI;

@Service
public class StudentServiceImpl implements StudentServiceI{

	@Autowired
	StudentRepository sr;
	
	public void saveStudent(Student s) {
		
		sr.save(s);
	}

	public List<Student> getAllStudents() {
		
		return (List<Student>) sr.findAll();
	}

	@Override
	public List<Student> getStudentsByBatch(String bn) {
		return sr.findAllByBatchNumber(bn);
	}

	@Override
	public Student getStudentData(int id) {
		Optional<Student> s=sr.findById(id);
		return s.get();   //get is optional's method
	}

	@Override
	public List<Student> updateStudent(int studentid, float amount) {
		Student s = sr.findById(studentid).get();
		float paidfees=Float.parseFloat(s.getFeesPaid())+amount;    //since we created feespaid as string in Student class
		s.setFeesPaid(String.valueOf(paidfees));                    //we need to convert into float as we r taking float input from web
		return (List<Student>) sr.findAll();
	}

	@Override
	public List<Student> removeStudent(int studentid) {
         sr.deleteById(studentid);
		return (List<Student>) sr.findAll();
	}

	@Override
	public List<Student> updateStudentBatch(int studentid, String batchNumber) {
		Student s=sr.findById(studentid).get();
		s.setBatchNumber(batchNumber);
		sr.save(s);
		return (List<Student>) sr.findAll();
	}


}
