package model.contract;

public class ContractDetail{
    private int id;
    private Contract contractId;
    private AttachFacility attachFacilityId;
    private int quantity;

    public ContractDetail(Contract contractId, AttachFacility attachFacilityId, int quantity) {
        this.contractId = contractId;
        this.attachFacilityId = attachFacilityId;
        this.quantity = quantity;
    }

    public ContractDetail(int id, Contract contractId, AttachFacility attachFacilityId, int quantity) {
        this.id = id;
        this.contractId = contractId;
        this.attachFacilityId = attachFacilityId;
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Contract getContractId() {
        return contractId;
    }

    public void setContractId(Contract contractId) {
        this.contractId = contractId;
    }

    public AttachFacility getAttachFacilityId() {
        return attachFacilityId;
    }

    public void setAttachFacilityId(AttachFacility attachFacilityId) {
        this.attachFacilityId = attachFacilityId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
