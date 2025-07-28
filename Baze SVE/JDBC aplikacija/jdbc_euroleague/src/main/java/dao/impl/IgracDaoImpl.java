package dao.impl;

import connection.ConnectionUtil_HikariCP;
import dao.IgracDao;
import model.Igrac;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class IgracDaoImpl implements IgracDao {

    @Override
    public int count() throws SQLException {
        return 0;
    }

    @Override
    public boolean delete(Igrac entity) throws SQLException {
        return false;
    }

    @Override
    public int deleteAll() throws SQLException {
        return 0;
    }

    @Override
    public boolean deleteById(Long aLong) throws SQLException {
        return false;
    }

    @Override
    public boolean existsById(Long aLong) throws SQLException {
        return false;
    }

    @Override
    public Iterable<Igrac> findAll() throws SQLException {
        return null;
    }

    @Override
    public Iterable<Igrac> findAllById(Iterable<Long> longs) throws SQLException {
        return null;
    }

    @Override
    public Igrac findById(Long aLong) throws SQLException {
        return null;
    }

    @Override
    public boolean save(Igrac entity) throws SQLException {
        return false;
    }

    @Override
    public int saveAll(Iterable<Igrac> entities) throws SQLException {
        return 0;
    }

    @Override
    public List<Igrac> getAllIgraci() {
        List<Igrac> igraci = new ArrayList<>();
        String sql = "SELECT * FROM Igrac WHERE idI = 4";

        try (Connection connection = ConnectionUtil_HikariCP.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            ResultSet resultSet = preparedStatement.executeQuery();

            int count = 0;
            while (resultSet.next()) {
                count++;
                Igrac igrac = new Igrac();
                igrac.setIdIgrac(resultSet.getLong("IdI"));
                igrac.setPozicija(resultSet.getString("Poz"));
                igrac.setVisina(resultSet.getString("Vis"));
                igrac.setTezina(resultSet.getString("Tez"));
                igrac.setKapacitet(resultSet.getInt("Kap"));
                igrac.setIdTim(resultSet.getLong("IdTM"));
                igraci.add(igrac);
            }

            System.out.println("Broj pronađenih igrača: " + count);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return igraci;
    }
}
