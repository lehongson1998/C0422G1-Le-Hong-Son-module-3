package com.case_study.dto.contract;

import com.case_study.model.contract.ContractDetail;
import com.case_study.model.customer.Customer;
import com.case_study.model.employee.Employee;
import com.case_study.model.facility.Facility;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import java.time.LocalDate;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ContractDto implements Validator {
    private Long id;
    private LocalDate startDay;
    private LocalDate endDay;
    private double deposit;
    private Customer customer;
    private Employee employee;
    private Facility facility;
    private List<ContractDetail> contractDetail;

    public ContractDto(LocalDate startDay, LocalDate endDay, double deposit, Customer customer, Employee employee, Facility facility, List<ContractDetail> contractDetail) {
        this.startDay = startDay;
        this.endDay = endDay;
        this.deposit = deposit;
        this.customer = customer;
        this.employee = employee;
        this.facility = facility;
        this.contractDetail = contractDetail;
    }

    @Override
    public boolean supports(Class<?> clazz) {
        return false;
    }

    @Override
    public void validate(Object target, Errors errors) {

    }
}
