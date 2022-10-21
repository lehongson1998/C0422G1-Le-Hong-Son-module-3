package com.case_study.repository;

import com.case_study.model.contract.Contract;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IContractRepository extends JpaRepository<Contract, Long> {
    Page<Contract> findAllByFacility_NameContaining(String facilityName, Pageable pageable);
}
