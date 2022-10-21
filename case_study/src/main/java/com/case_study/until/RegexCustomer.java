package com.case_study.until;

import com.case_study.dto.customer.CustomerDto;

import java.time.LocalDate;

public class RegexCustomer {
    public static boolean checkRegexName(CustomerDto customerDto){
        String name = VnCharacterUnit.removeAccent(customerDto.getName());
        return name.matches("^([A-Z][a-z]+\\s?){1,4}$");
    }

    public static boolean checkDateOfBirth(CustomerDto customerDto){
        LocalDate now = LocalDate.now();
        int age = now.getYear() - customerDto.getDateOfBirth().getYear();
        if (age < 18 || age > 100){
            return false;
        }else {
            return true;
        }
    }

    public static boolean checkRegexIdCard(CustomerDto customerDto){
        return customerDto.getIdCard().matches("^[0-9]{9,11}$");
    }

    public static boolean checkRegexAddress(CustomerDto customerDto){
        String address = VnCharacterUnit.removeAccent(customerDto.getAddress());
        return address.matches("^[A-Za-z ,]+$");
    }
}
