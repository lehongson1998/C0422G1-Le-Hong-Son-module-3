package com.case_study.dto.customer;

import com.case_study.until.RegexCustomer;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import java.time.LocalDate;

public class CustomerDto extends PersonDto implements Validator {
    private Long Id;
    private Boolean gender;
    private TypeCustomerDto typeCustomerDto;

    public CustomerDto() {
    }

    public CustomerDto(String name, LocalDate dateOfBirth, String idCard, String phoneNumber, String email, String address, Long id, Boolean gender, TypeCustomerDto typeCustomerDto) {
        super(name, dateOfBirth, idCard, phoneNumber, email, address);
        Id = id;
        this.gender = gender;
        this.typeCustomerDto = typeCustomerDto;
    }

    public CustomerDto(String name, LocalDate dateOfBirth, String idCard, String phoneNumber, String email, String address, Boolean gender, TypeCustomerDto typeCustomerDto) {
        super(name, dateOfBirth, idCard, phoneNumber, email, address);
        this.gender = gender;
        this.typeCustomerDto = typeCustomerDto;
    }

    public Long getId() {
        return Id;
    }

    public void setId(Long id) {
        Id = id;
    }

    public Boolean getGender() {
        return gender;
    }

    public void setGender(Boolean gender) {
        this.gender = gender;
    }

    public TypeCustomerDto getTypeCustomerDto() {
        return typeCustomerDto;
    }

    public void setTypeCustomerDto(TypeCustomerDto typeCustomerDto) {
        this.typeCustomerDto = typeCustomerDto;
    }

    @Override
    public boolean supports(Class<?> clazz) {
        return false;
    }

    @Override
    public void validate(Object target, Errors errors) {
        CustomerDto customerDto = (CustomerDto) target;
        if (!RegexCustomer.checkRegexName(customerDto)){
            errors.rejectValue("name", "wrong.create","* Please input right format!");
        }
        if (customerDto.getDateOfBirth() != null){
            if (!RegexCustomer.checkDateOfBirth(customerDto)){
                errors.rejectValue("dateOfBirth", "wrong.create","* Please input right format!");
            }
        }else {
            errors.rejectValue("dateOfBirth", "wrong.create","* Wrong not blank");
        }
        if (!RegexCustomer.checkRegexIdCard(customerDto)){
            errors.rejectValue("idCard", "wrong.create","* Please input right format!");
        }
        if (!RegexCustomer.checkRegexAddress(customerDto)){
            errors.rejectValue("address", "wrong.create","* Please input right format!");
        }

        if(customerDto.gender == null){
            errors.rejectValue("gender", "wrong.create","* Please input not blank");
        }

        if(customerDto.typeCustomerDto == null){
            errors.rejectValue("typeCustomerDto", "wrong.create","* Please input not blank");
        }
    }
}
