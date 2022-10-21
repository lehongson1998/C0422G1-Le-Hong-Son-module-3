package com.case_study.model.contract;

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
@Table(name = "contract_detail")
public class ContractDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private int quantity;
    @ManyToOne
    @JoinColumn(name = "contract_id", referencedColumnName = "id")
    private Contract contract;
    @ManyToOne
    @JoinColumn(name = "attach_id", referencedColumnName = "id")
    private AttachFacility attachFacility;

    public ContractDetail(int quantity, Contract contract, AttachFacility attachFacility) {
        this.quantity = quantity;
        this.contract = contract;
        this.attachFacility = attachFacility;
    }
}
