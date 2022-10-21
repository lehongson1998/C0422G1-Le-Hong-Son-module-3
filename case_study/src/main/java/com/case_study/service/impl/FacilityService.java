package com.case_study.service.impl;

import com.case_study.model.facility.Facility;
import com.case_study.model.facility.FacilityType;
import com.case_study.model.facility.RentType;
import com.case_study.repository.IFacilityRepository;
import com.case_study.repository.IFacilityTypeRepository;
import com.case_study.repository.IRentTypeRepository;
import com.case_study.service.IFacilityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class FacilityService implements IFacilityService {
    @Autowired
    private IFacilityRepository facilityRepository;
    @Autowired
    private IFacilityTypeRepository facilityTypeRepository;
    @Autowired
    private IRentTypeRepository rentTypeRepository;

    @Override
    public Page<Facility> listFacility(String name, Pageable pageable) {
        return facilityRepository.findAllByNameContaining(name, pageable);
    }

    @Override
    public List<FacilityType> listFacilityType() {
        return facilityTypeRepository.findAll();
    }

    @Override
    public List<RentType> listRentType() {
        return rentTypeRepository.findAll();
    }

    @Override
    public void saveFacility(Facility facility) {
        facilityRepository.save(facility);
    }

    @Override
    public void deleteFacility(Long id) {
        facilityRepository.delete(findById(id));
    }

    @Override
    public Facility findById(Long id) {
        return facilityRepository.findById(id).orElse(null);
    }
}
