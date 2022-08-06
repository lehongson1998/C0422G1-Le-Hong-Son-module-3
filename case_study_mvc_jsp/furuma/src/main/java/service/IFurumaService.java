package service;

import model.customer.Customer;
import model.employee.Employee;
import model.facility.House;
import model.facility.Room;
import model.facility.Villa;

import java.util.List;

public interface IFurumaService {
    List<Customer> findCustomer();
    List<Employee> findAllEmployee();
    Customer findCustomerById(int id);
    boolean addCustomer(Customer customer);
    boolean editCustomer(int id, Customer customer);
    Boolean deleteCustomer(int id);
    boolean addEmployee(Employee employee);
    boolean addVilla(Villa villa);
    boolean addHouse(House house);
    boolean addRoom(Room room);
}
