package Repository;

import model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserRepository {

    public List<User> selectAllUsers();

    public boolean deleteUser(int id) throws SQLException;

    public boolean updateUser(User user) throws SQLException;

    public List<User> findByCountry(String country);

    public List<User> sortByName();

    public List<User> sortByCountry();

    User getUserById(int id);

    boolean insertUserStore(User user) throws SQLException;

    void addUserTransaction(User user, int[] permision);

    public void insertUpdateWithoutTransaction();

    public void insertUpdateUseTransaction();
}
