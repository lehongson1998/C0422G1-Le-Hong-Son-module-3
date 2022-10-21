package com.case_study.service.impl;

import com.case_study.model.contract.AttachFacility;
import com.case_study.model.contract.Contract;
import com.case_study.model.contract.ContractDetail;
import com.case_study.repository.IAttachFacilityRepository;
import com.case_study.repository.IContractDetailRepository;
import com.case_study.repository.IContractRepository;
import com.case_study.service.IContractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Service
public class ContractService implements IContractService {
    @Autowired
    private IContractRepository contractRepository;
    @Autowired
    private IContractDetailRepository contractDetailRepository;
    @Autowired
    private IAttachFacilityRepository attachFacilityRepository;

    @Override
    public Page<Contract> listContract(String facilityName, Pageable pageable) {
        return contractRepository.findAllByFacility_NameContaining(facilityName, pageable);
    }

    @Override
    public void saveContract(Contract contract) {
        contractRepository.save(contract);
    }

    @Override
    public void saveContractDetail(ContractDetail contractDetail) {
        contractDetailRepository.save(contractDetail);
    }

    @Override
    public void deleteContract(Long id) {
        contractRepository.delete(findById(id));
    }

    @Override
    public Contract findById(Long id) {
        return contractRepository.findById(id).orElse(null);
    }

    @Override
    public List<AttachFacility> listAttachFacility() {
        return attachFacilityRepository.findAll();
    }
}
