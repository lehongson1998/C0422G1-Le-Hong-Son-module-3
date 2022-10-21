package com.case_study.service;

import com.case_study.model.customer.Customer;
import com.case_study.model.customer.TypeCustomer;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface ICustomerService {
    Page<Customer> findAllCustomer(String name, String typeCustomer, Pageable pageable);

    void saveCustomer(Customer customer);

    Customer findByIdCustomer(Long id);

    void deleteCustomer(Long id);

    List<TypeCustomer> findAllTypeCustomer();
}
