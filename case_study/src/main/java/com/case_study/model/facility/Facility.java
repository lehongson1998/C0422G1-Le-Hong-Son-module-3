package com.case_study.model.facility;

import com.case_study.model.contract.Contract;
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
@Table(name = "facility")
public class Facility {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private double cost;
    private int maxPeople;
    private int area;
    private String standardRoom;
    private String descriptionOtherConvenience;
    private double poolArea;
    private int numberOfFloors;
    @Column(columnDefinition = "text")
    private String facilityFree;
    @ManyToOne
    @JoinColumn(name = "facility_type_id", referencedColumnName = "id")
    private FacilityType facilityId;
    @ManyToOne
    @JoinColumn(name = "rent_type_id", referencedColumnName = "id")
    private RentType rentType;
    @OneToMany(mappedBy = "facility", cascade = CascadeType.ALL)
    private List<Contract> contractList;

    public Facility(String name, double cost, int maxPeople, int area, String standardRoom, String descriptionOtherConvenience, double poolArea, int numberOfFloors, String facilityFree, FacilityType facilityId, RentType rentType, List<Contract> contractList) {
        this.name = name;
        this.cost = cost;
        this.maxPeople = maxPeople;
        this.area = area;
        this.standardRoom = standardRoom;
        this.descriptionOtherConvenience = descriptionOtherConvenience;
        this.poolArea = poolArea;
        this.numberOfFloors = numberOfFloors;
        this.facilityFree = facilityFree;
        this.facilityId = facilityId;
        this.rentType = rentType;
        this.contractList = contractList;
    }
}
