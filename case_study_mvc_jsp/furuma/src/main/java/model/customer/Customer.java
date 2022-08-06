package model.customer;

import java.time.LocalDate;
import java.util.Date;

public class Customer {
    private int id;
    private int typeCustomerId;
    private String name;
    private String dateOfBirth;
    private int gender;
    private String idCard;
    private String phoneNumber;
    private String email;
    private String address;

    public Customer(int typeCustomerId, String name, String dateOfBirth, int gender, String idCard, String phoneNumber, String email, String address) {
        this.typeCustomerId = typeCustomerId;
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.idCard = idCard;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.address = address;
    }

    public Customer(int id, int typeCustomerId, String name, String dateOfBirth, int gender, String idCard, String phoneNumber, String email, String address) {
        this.id = id;
        this.typeCustomerId = typeCustomerId;
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.idCard = idCard;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTypeCustomerId() {
        return typeCustomerId;
    }

    public void setTypeCustomerId(int typeCustomerId) {
        this.typeCustomerId = typeCustomerId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
