package com.case_study.model.customer;

import com.case_study.model.Person;
import com.case_study.model.contract.Contract;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.List;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "customer")
public class Customer extends Person {
    private boolean gender;
    @ManyToOne
    @JoinColumn(name = "type_customer_id", referencedColumnName = "typeCustomerId", nullable = false)
    private TypeCustomer typeCustomer;
    @OneToMany(mappedBy = "customer", cascade = CascadeType.ALL)
    private List<Contract> contractList;

    public Customer(Long Id, String name, LocalDate dateOfBirth, String idCard, String phoneNumber, String email, String address, boolean gender, TypeCustomer typeCustomer, List<Contract> contractList) {
        super(Id, name, dateOfBirth, idCard, phoneNumber, email, address);
        this.gender = gender;
        this.typeCustomer = typeCustomer;
        this.contractList = contractList;
    }

    public Customer(String name, LocalDate dateOfBirth, String idCard, String phoneNumber, String email, String address, TypeCustomer typeCustomer, List<Contract> contractList) {
        super(name, dateOfBirth, idCard, phoneNumber, email, address);
        this.typeCustomer = typeCustomer;
        this.contractList = contractList;
    }
}
