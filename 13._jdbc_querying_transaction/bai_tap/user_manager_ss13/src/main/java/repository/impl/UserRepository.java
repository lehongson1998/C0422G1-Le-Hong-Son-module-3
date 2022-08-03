package repository.impl;

import connect.DatabaseConnect;
import model.User;
import repository.IUserRepository;

import java.math.BigDecimal;
import java.sql.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class UserRepository implements IUserRepository {
    private static final String INSERT_INTO = "INSERT INTO users(name, email, country) VALUES (?, ?, ?);";
    private static final String SELECT_BY_ID = "CALL get_user_by_id(?);";
    private static final String SELECT_ALL = "CALL display_all_user";
    private static final String DELETE_BY_ID = "CALL remove_user(?);";
    private static final String UPDATE_USERS_SQL = "CALL edit_user(?,?,?,?);";
    private static final String FIND_BY_COUNTRY = "SELECT * FROM users WHERE users.country like ?;";
    private static final String SORT_BY_NAME = "CALL sort_by_name();";
    private static final String SORT_BY_COUNTRY = "CALL sort_by_country();";
    private static final String SQL_INSERT = "INSERT INTO EMPLOYEE (NAME, SALARY, CREATED_DATE) VALUES (?,?,?)";

    private static final String SQL_UPDATE = "UPDATE EMPLOYEE SET SALARY=? WHERE NAME=?";

    private static final String SQL_TABLE_CREATE = "CREATE TABLE EMPLOYEE"

            + "("

            + " ID serial,"

            + " NAME varchar(100) NOT NULL,"

            + " SALARY numeric(15, 2) NOT NULL,"

            + " CREATED_DATE timestamp,"

            + " PRIMARY KEY (ID)"

            + ")";

    private static final String SQL_TABLE_DROP = "DROP TABLE IF EXISTS EMPLOYEE";


    @Override
    public List<User> selectAllUsers() {
        List<User> userList = new ArrayList<>();
        try {
            Connection connection = DatabaseConnect.getConnectDB();
            CallableStatement callableStatement = connection.prepareCall(SELECT_ALL);
            ResultSet resultSet = callableStatement.executeQuery();
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

    @Override
    public boolean deleteUser(int id) throws SQLException {
        try {
            Connection connection = DatabaseConnect.getConnectDB();
            CallableStatement callableStatement = connection.prepareCall(DELETE_BY_ID);
            callableStatement.setInt(1, id);
            int checkDelete = callableStatement.executeUpdate();
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
            CallableStatement callableStatement = connection.prepareCall(UPDATE_USERS_SQL);
            callableStatement.setString(1, user.getName());
            callableStatement.setString(2, user.getEmail());
            callableStatement.setString(3, user.getCountry());
            callableStatement.setInt(4, user.getId());
            int check = callableStatement.executeUpdate();
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
            preparedStatement.setString(1, "%" + country + "%");
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
            CallableStatement callableStatement = connection.prepareCall(SORT_BY_NAME);
            ResultSet resultSet = callableStatement.executeQuery();
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

    @Override
    public List<User> sortByCountry() {
        List<User> userList = new ArrayList<>();
        try {
            Connection connection = DatabaseConnect.getConnectDB();
            CallableStatement callableStatement = connection.prepareCall(SORT_BY_COUNTRY);
            ResultSet resultSet = callableStatement.executeQuery();
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

    @Override
    public User getUserById(int id) {
        User user = null;
        try (Connection connection = DatabaseConnect.getConnectDB();
             CallableStatement callableStatement = connection.prepareCall(SELECT_BY_ID);) {
             callableStatement.setInt(1, id);
             ResultSet rs = callableStatement.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                String email = rs.getString("email");
                String country = rs.getString("country");
                user = new User(id, name, email, country);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    @Override
    public void insertUserStore(User user) throws SQLException {
        String query = "{CALL insert_user(?,?,?)}";
        Connection connection = DatabaseConnect.getConnectDB();
        int rowAffected = 0;
        try {
             CallableStatement callableStatement = connection.prepareCall(query);
             connection.setAutoCommit(false);
             if (!user.getName().equals("") && !user.getEmail().equals("") && !user.getCountry().equals("")){
                callableStatement.setString(1, user.getName());
                callableStatement.setString(2, user.getEmail());
                callableStatement.setString(3, user.getCountry());
                System.out.println(callableStatement);
                rowAffected = callableStatement.executeUpdate();
            }
             if (rowAffected == 1){
                 connection.commit();
             }else {
                 connection.rollback();
             }
        } catch (SQLException e) {
           connection.rollback();
           e.printStackTrace();
        }
    }

    @Override
    public void addUserTransaction(User user, int[] permision) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        PreparedStatement pstmtAssignment = null;
        ResultSet rs = null;
        int rowAffected = 0;
        try {
            conn = DatabaseConnect.getConnectDB();
            conn.setAutoCommit(false);
            if (!user.getEmail().equals("") && !user.getEmail().equals("") && !user.getCountry().equals("")){
                pstmt = conn.prepareStatement(INSERT_INTO, Statement.RETURN_GENERATED_KEYS);
                pstmt.setString(1, user.getName());
                pstmt.setString(2, user.getEmail());
                pstmt.setString(3, user.getCountry());
                rowAffected = pstmt.executeUpdate();
            }
            rs = pstmt.getGeneratedKeys();
            int userId = 0;
            if (rs.next())
                userId = rs.getInt(1);
            if (rowAffected == 1) {
                String sqlPivot = "INSERT INTO user_permision(user_id,permision_id) VALUES (?,?)";
                pstmtAssignment = conn.prepareStatement(sqlPivot);
                for (int permisionId : permision) {
                    pstmtAssignment.setInt(1, userId);
                    pstmtAssignment.setInt(2, permisionId);
                    pstmtAssignment.executeUpdate();
                }
                conn.commit();
            } else {
                conn.rollback();
            }
        } catch (SQLException ex) {
            try {
                if (conn != null)
                    conn.rollback();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
            System.out.println(ex.getMessage());
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (pstmtAssignment != null) pstmtAssignment.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
    }

    @Override
    public void insertUpdateWithoutTransaction() {
        try {
            Connection connection = DatabaseConnect.getConnectDB();
            Statement statement = connection.createStatement();
            PreparedStatement prInsert = connection.prepareStatement(SQL_INSERT);
            PreparedStatement prUpdate = connection.prepareStatement(SQL_UPDATE);

            statement.execute(SQL_TABLE_DROP);
            statement.execute(SQL_TABLE_CREATE);

            prInsert.setString(1, "Quynh");
            prInsert.setBigDecimal(2, new BigDecimal(10));
            prInsert.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
            prInsert.execute();

            prInsert.setString(1, "Ngan");
            prInsert.setBigDecimal(2, new BigDecimal(20));
            prInsert.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
            prInsert.execute();

            prUpdate.setBigDecimal(2, new BigDecimal(999.99));
            prUpdate.setString(2, "Quynh");
            prUpdate.execute();


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void insertUpdateUseTransaction() {
        try {
            Connection connection = DatabaseConnect.getConnectDB();
            Statement statement = connection.createStatement();
            PreparedStatement prInsert = connection.prepareStatement(SQL_INSERT);
            PreparedStatement prUpdate = connection.prepareStatement(SQL_UPDATE);

            statement.execute(SQL_TABLE_DROP);
            statement.execute(SQL_TABLE_CREATE);

            connection.setAutoCommit(false);

            prInsert.setString(1, "Quynh");
            prInsert.setBigDecimal(2, new BigDecimal(10));
            prInsert.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
            prInsert.execute();

            prInsert.setString(1, "Ngan");
            prInsert.setBigDecimal(2, new BigDecimal(20));
            prInsert.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
            prInsert.execute();

            prUpdate.setBigDecimal(1, new BigDecimal(999.99));
            prUpdate.setString(2, "Quynh");
            prUpdate.execute();

            prUpdate.setBigDecimal(1, new BigDecimal(1200));
            prUpdate.setString(2, "Ngan");
            prUpdate.execute();

            connection.commit();
            connection.setAutoCommit(true);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
