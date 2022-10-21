package com.case_study.repository;

import com.case_study.model.customer.TypeCustomer;
import org.springframework.data.jpa.repository.JpaRepository;

import javax.transaction.Transactional;

@Transactional
public interface ITypeCustomerRepository extends JpaRepository<TypeCustomer, Long> {
}
