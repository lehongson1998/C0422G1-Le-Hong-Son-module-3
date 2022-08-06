package repository.impl;

import connect.DatabaseConnect;
import model.customer.Customer;
import model.employee.Employee;
import model.facility.House;
import model.facility.Room;
import model.facility.Villa;
import repository.IFurumaRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FurumaRepository implements IFurumaRepository {
    private final String SELECT_CUSTOMER = "CALL find_all_customer();";
    private final String SELECT_CUSTOMER_BY_ID = "CALL find_customer_by_id(?);";
    private final String ADD_NEW_CUSTOMER = "CALL insert_new_customer(?, ?, ?, ?, ?, ?, ?, ?, ?);";
    private final String EDIT_CUSTOMER = "CALL edit_customer(?, ?, ?, ?, ?, ?, ?, ?, ?);";
    private final String DELETE_CUSTOMER = "CALL delete_customer(?);";
    @Override
    public List<Customer> findCustomer() {
        List<Customer> customerList = new ArrayList<>();
        Customer customer;
        Connection connection = DatabaseConnect.getConnectDB();
        try {
            CallableStatement callableStatement = connection.prepareCall(SELECT_CUSTOMER);
            ResultSet resultSet = callableStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("ma_khach_hang");
                int typeId = resultSet.getInt("ma_loai_khach");
                String name = resultSet.getString("ho_ten");
                String date = resultSet.getString("ngay_sinh");
                int gender = resultSet.getInt("gioi_tinh");
                String idCard = resultSet.getString("so_cmnd");
                String phoneNumber = resultSet.getString("so_dien_thoai");
                String email = resultSet.getString("email");
                String address = resultSet.getString("dia_chi");
                customer = new Customer(id, typeId, name, date, gender, idCard, phoneNumber, email, address);
                customerList.add(customer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
    }

    @Override
    public List<Employee> findAllEmployee() {
        return null;
    }

    @Override
    public Customer findCustomerById(int id) {
        Customer customer = null;
            Connection connection = DatabaseConnect.getConnectDB();
            try {
                CallableStatement callableStatement = connection.prepareCall(SELECT_CUSTOMER_BY_ID);
                callableStatement.setInt(1, id);
                ResultSet resultSet = callableStatement.executeQuery();
                while (resultSet.next()){
                    int typeId = resultSet.getInt("ma_loai_khach");
                    String name = resultSet.getString("ho_ten");
                    String date = resultSet.getString("ngay_sinh");
                    int gender = resultSet.getInt("gioi_tinh");
                    String idCard = resultSet.getString("so_cmnd");
                    String phoneNumber = resultSet.getString("so_dien_thoai");
                    String email = resultSet.getString("email");
                    String address = resultSet.getString("dia_chi");
                    customer = new Customer(id, typeId, name, date, gender, idCard, phoneNumber, email, address);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return customer;
    }

    @Override
    public boolean addCustomer(Customer customer) {
        Connection connection = DatabaseConnect.getConnectDB();
        int check;
        try {
            CallableStatement callableStatement = connection.prepareCall(ADD_NEW_CUSTOMER);
            callableStatement.setInt(1, customer.getId());
            callableStatement.setInt(2, customer.getTypeCustomerId());
            callableStatement.setString(3, customer.getName());
            callableStatement.setString(4, customer.getDateOfBirth());
            callableStatement.setInt(5, customer.getGender());
            callableStatement.setString(6, customer.getIdCard());
            callableStatement.setString(7, customer.getPhoneNumber());
            callableStatement.setString(8, customer.getEmail());
            callableStatement.setString(9, customer.getAddress());
            check = callableStatement.executeUpdate();
            return check > 0? true: false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean editCustomer(int id, Customer customer) {
        Connection connection = DatabaseConnect.getConnectDB();
        int check;
        try {
            CallableStatement callableStatement = connection.prepareCall(EDIT_CUSTOMER);
            callableStatement.setInt(1, id);
            callableStatement.setInt(2, customer.getTypeCustomerId());
            callableStatement.setString(3, customer.getName());
            callableStatement.setString(4, customer.getDateOfBirth());
            callableStatement.setInt(5, customer.getGender());
            callableStatement.setString(6, customer.getIdCard());
            callableStatement.setString(7, customer.getPhoneNumber());
            callableStatement.setString(8, customer.getEmail());
            callableStatement.setString(9, customer.getAddress());
            check = callableStatement.executeUpdate();
            return check > 0? true: false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Boolean deleteCustomer(int id) {
        Connection connection = DatabaseConnect.getConnectDB();
        int check;
        try {
            CallableStatement callableStatement = connection.prepareCall(DELETE_CUSTOMER);
            callableStatement.setInt(1, id);
            check = callableStatement.executeUpdate();
            return check > 0? true: false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
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
