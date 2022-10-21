package com.case_study.model.facility;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class FacilityType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    @OneToMany(mappedBy = "facilityId", cascade = CascadeType.ALL)
    private List<Facility> facility;

    public FacilityType(String name, List<Facility> facility) {
        this.name = name;
        this.facility = facility;
    }
}
