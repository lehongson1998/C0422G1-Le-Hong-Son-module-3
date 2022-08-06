package model.contract;

import model.customer.Customer;
import model.employee.Employee;
import model.facility.Facility;

import java.time.LocalDate;

public class Contract {
    private int id;
    private LocalDate startDay;
    private LocalDate endDay;
    private double deposit;
    private Employee employeeId;
    private Customer customerId;
    private Facility facilityId;

    public Contract(LocalDate startDay, LocalDate endDay, double deposit, Employee employeeId, Customer customerId, Facility facilityId) {
        this.startDay = startDay;
        this.endDay = endDay;
        this.deposit = deposit;
        this.employeeId = employeeId;
        this.customerId = customerId;
        this.facilityId = facilityId;
    }

    public Contract(int id, LocalDate startDay, LocalDate endDay, double deposit, Employee employeeId, Customer customerId, Facility facilityId) {
        this.id = id;
        this.startDay = startDay;
        this.endDay = endDay;
        this.deposit = deposit;
        this.employeeId = employeeId;
        this.customerId = customerId;
        this.facilityId = facilityId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public LocalDate getStartDay() {
        return startDay;
    }

    public void setStartDay(LocalDate startDay) {
        this.startDay = startDay;
    }

    public LocalDate getEndDay() {
        return endDay;
    }

    public void setEndDay(LocalDate endDay) {
        this.endDay = endDay;
    }

    public double getDeposit() {
        return deposit;
    }

    public void setDeposit(double deposit) {
        this.deposit = deposit;
    }

    public Employee getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Employee employeeId) {
        this.employeeId = employeeId;
    }

    public Customer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Customer customerId) {
        this.customerId = customerId;
    }

    public Facility getFacilityId() {
        return facilityId;
    }

    public void setFacilityId(Facility facilityId) {
        this.facilityId = facilityId;
    }
}
