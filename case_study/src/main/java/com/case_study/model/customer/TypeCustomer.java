package com.case_study.model.customer;

import com.case_study.model.customer.Customer;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "type_customer")
public class TypeCustomer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long typeCustomerId;
    private String typeNameCustomer;
    @OneToMany(mappedBy = "typeCustomer", cascade = CascadeType.ALL)
    private List<Customer> customerList;

    public TypeCustomer(Long typeCustomerId, String typeNameCustomer, List<Customer> customerList) {
        this.typeCustomerId = typeCustomerId;
        this.typeNameCustomer = typeNameCustomer;
        this.customerList = customerList;
    }

    public TypeCustomer() {
    }

    public TypeCustomer(List<Customer> customerList) {
        this.customerList = customerList;
    }

    public Long getTypeCustomerId() {
        return typeCustomerId;
    }

    public void setTypeCustomerId(Long typeCustomerId) {
        this.typeCustomerId = typeCustomerId;
    }

    public List<Customer> getCustomerList() {
        return customerList;
    }

    public void setCustomerList(List<Customer> customerList) {
        this.customerList = customerList;
    }

    public String getTypeNameCustomer() {
        return typeNameCustomer;
    }

    public void setTypeNameCustomer(String typeNameCustomer) {
        this.typeNameCustomer = typeNameCustomer;
    }
}
