package com.case_study.dto.customer;

public class TypeCustomerDto {
    private Long id;
    private String typeCustomerName;

    public TypeCustomerDto(Long id, String typeCustomerName) {
        this.id = id;
        this.typeCustomerName = typeCustomerName;
    }

    public TypeCustomerDto() {
    }

    public TypeCustomerDto(String typeCustomerName) {
        this.typeCustomerName = typeCustomerName;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTypeCustomerName() {
        return typeCustomerName;
    }

    public void setTypeCustomerName(String typeCustomerName) {
        this.typeCustomerName = typeCustomerName;
    }
}
