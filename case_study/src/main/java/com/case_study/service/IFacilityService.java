package com.case_study.service;

import com.case_study.model.facility.Facility;
import com.case_study.model.facility.FacilityType;
import com.case_study.model.facility.RentType;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface IFacilityService {
    Page<Facility> listFacility(String name, Pageable pageable);

    List<FacilityType> listFacilityType();

    List<RentType> listRentType();

    void saveFacility(Facility facility);

    void deleteFacility(Long id);

    Facility findById(Long id);
}
