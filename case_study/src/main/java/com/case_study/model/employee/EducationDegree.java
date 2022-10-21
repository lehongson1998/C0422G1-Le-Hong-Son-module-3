package com.case_study.model.employee;

import javax.persistence.*;
import java.util.List;

@Entity
public class EducationDegree {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long educationId;
    private String educationName;
    @OneToMany(mappedBy = "educationDegree", cascade = CascadeType.ALL)
    private List<Employee> employeeList;

    public EducationDegree() {
    }

    public EducationDegree(Long educationId, String educationName, List<Employee> employeeList) {
        this.educationId = educationId;
        this.educationName = educationName;
        this.employeeList = employeeList;
    }

    public EducationDegree(String educationName, List<Employee> employeeList) {
        this.educationName = educationName;
        this.employeeList = employeeList;
    }

    public Long getEducationId() {
        return educationId;
    }

    public void setEducationId(Long educationId) {
        this.educationId = educationId;
    }

    public String getEducationName() {
        return educationName;
    }

    public void setEducationName(String educationName) {
        this.educationName = educationName;
    }

    public List<Employee> getEmployeeList() {
        return employeeList;
    }

    public void setEmployeeList(List<Employee> employeeList) {
        this.employeeList = employeeList;
    }
}
