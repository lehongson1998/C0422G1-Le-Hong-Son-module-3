package service.impl;

import model.customer.Customer;
import model.employee.Employee;
import model.facility.House;
import model.facility.Room;
import model.facility.Villa;
import repository.impl.FurumaRepository;
import service.IFurumaService;

import java.util.List;

public class FurumaService implements IFurumaService {
    FurumaRepository furumaRepository = new FurumaRepository();
    @Override
    public List<Customer> findCustomer() {
        return furumaRepository.findCustomer();
    }

    @Override
    public List<Employee> findAllEmployee() {
        return null;
    }

    @Override
    public Customer findCustomerById(int id) {
        return furumaRepository.findCustomerById(id);
    }

    @Override
    public boolean addCustomer(Customer customer) {
        return furumaRepository.addCustomer(customer);
    }

    @Override
    public boolean addEmployee(Employee employee) {
        return false;
    }

    @Override
    public boolean addVilla(Villa villa) {
        return false;
    }

    @Override
    public boolean addHouse(House house) {
        return false;
    }

    @Override
    public boolean addRoom(Room room) {
        return false;
    }
}
