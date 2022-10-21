package com.case_study.service.impl;

import com.case_study.model.customer.Customer;
import com.case_study.model.customer.TypeCustomer;
import com.case_study.repository.ICustomerRepository;
import com.case_study.repository.ITypeCustomerRepository;
import com.case_study.service.ICustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerService implements ICustomerService {
    @Autowired
    private ICustomerRepository iCustomerRepository;
    @Autowired
    private ITypeCustomerRepository iTypeCustomerRepository;
    @Override
    public Page<Customer> findAllCustomer(String name, String typeCustomer, Pageable pageable) {
        return iCustomerRepository.findAllByNameContainingAndTypeCustomer_TypeNameCustomerContaining(name, typeCustomer, pageable);

    }

    @Override
    public void saveCustomer(Customer customer) {
        iCustomerRepository.save(customer);
    }

    @Override
    public Customer findByIdCustomer(Long id) {
        return iCustomerRepository.findById(id).orElse(null);
    }

    @Override
    public void deleteCustomer(Long id) {
        iCustomerRepository.delete(findByIdCustomer(id));
    }

    @Override
    public List<TypeCustomer> findAllTypeCustomer() {
        return iTypeCustomerRepository.findAll();
    }
}
