package Repository.impl;

import connect.DatabaseConnect;
import model.User;
import Repository.IUserRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserRepository implements IUserRepository {
    private static final String INSERT_INTO = "INSERT INTO users(name, email, country) VALUES (?, ?, ?);";
    private static final String SELECT_BY_ID = "SELECT * FROM users WHERE users.id = ?;";
    private static final String SELECT_ALL = "SELECT * FROM users";
    private static final String DELETE_BY_ID = "DELETE FROM users WHERE users.id = ?;";
    private static final String UPDATE_USERS_SQL = "UPDATE users SET name = ?,email= ?, country = ? WHERE id = ?;";
    private static final String FIND_BY_COUNTRY = "SELECT * FROM users WHERE users.country like ?;";
    private static final String SORT_BY_NAME = "SELECT * FROM users ORDER BY users.name DESC;";


    @Override
    public void insertUser(User user) throws SQLException {
        Connection connection = DatabaseConnect.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_INTO);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getCountry());
            preparedStatement.executeUpdate();
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public User selectUser(int id) {
        User user = null;
        Connection connection = DatabaseConnect.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BY_ID);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id1 = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String county = resultSet.getString("country");
                user = new User(id1, name, email, county);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    @Override
    public List<User> selectAllUsers() {
        return sortByName();
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        try {
            Connection connection = DatabaseConnect.getConnectDB();
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_BY_ID);
            preparedStatement.setInt(1, id);
            int checkDelete = preparedStatement.executeUpdate();
            return checkDelete > 0?true : false;
        }catch (SQLException s){
            s.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        try {
            Connection connection = DatabaseConnect.getConnectDB();
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_USERS_SQL);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getCountry());
            preparedStatement.setInt(4, user.getId());
            int check = preparedStatement.executeUpdate();
            return check > 0?true:false;
        }catch (SQLException s){
            s.printStackTrace();
        }
        return false;
    }

    @Override
    public List<User> findByCountry(String country) {
        List<User> userList = new ArrayList<>();
        User user;
        try {
            Connection connection = DatabaseConnect.getConnectDB();
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_COUNTRY);
            preparedStatement.setString(1, country);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country1 = resultSet.getString("country");
                user = new User(id, name, email, country1);
                userList.add(user);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return userList;
    }

    @Override
    public List<User> sortByName() {
        List<User> userList = new ArrayList<>();
        try {
            Connection connection = DatabaseConnect.getConnectDB();
            PreparedStatement preparedStatement = connection.prepareStatement(SORT_BY_NAME);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                userList.add(new User(id, name, email, country));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return userList;
    }
}
