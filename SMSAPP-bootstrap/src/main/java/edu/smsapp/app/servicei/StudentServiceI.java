package edu.smsapp.app.servicei;

import java.util.List;

import edu.smsapp.app.model.Student;

public interface StudentServiceI {
	public void saveStudent(Student s);
	public List<Student> getAllStudents();
	public List<Student> getStudentsByBatch(String bn);
	public Student getStudentData(int id);
	public List<Student> updateStudent(int studentid, float amount);
	public List<Student> removeStudent(int studentid);
	public List<Student> updateStudentBatch(int studentid, String batchNumber);
}
