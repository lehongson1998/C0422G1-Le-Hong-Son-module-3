package com.case_study.model.employee;

import com.case_study.model.Person;
import com.case_study.model.contract.Contract;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.List;

@Entity
@NoArgsConstructor
@Getter
@Setter
public class Employee extends Person {
    private double salary;
    @ManyToOne
    @JoinColumn(name = "position_id", referencedColumnName = "positionId")
    private Position position;
    @ManyToOne
    @JoinColumn(name = "education_id", referencedColumnName = "educationId")
    private EducationDegree educationDegree;
    @ManyToOne
    @JoinColumn(name = "division_id", referencedColumnName = "divisionId")
    private Division division;
    @OneToMany(mappedBy = "employee", cascade = CascadeType.ALL)
    private List<Contract> contractList;

    public Employee(Long Id, String name, LocalDate dateOfBirth, String idCard, String phoneNumber, String email, String address, double salary, Position position, EducationDegree educationDegree, Division division, List<Contract> contractList) {
        super(Id, name, dateOfBirth, idCard, phoneNumber, email, address);
        this.salary = salary;
        this.position = position;
        this.educationDegree = educationDegree;
        this.division = division;
        this.contractList = contractList;
    }

    public Employee(String name, LocalDate dateOfBirth, String idCard, String phoneNumber, String email, String address, double salary, Position position, EducationDegree educationDegree, Division division, List<Contract> contractList) {
        super(name, dateOfBirth, idCard, phoneNumber, email, address);
        this.salary = salary;
        this.position = position;
        this.educationDegree = educationDegree;
        this.division = division;
        this.contractList = contractList;
    }
}
