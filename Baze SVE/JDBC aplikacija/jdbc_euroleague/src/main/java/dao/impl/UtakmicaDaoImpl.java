package dao.impl;

import dao.UtakmicaDao;
import model.Utakmica;

import java.sql.SQLException;

public class UtakmicaDaoImpl implements UtakmicaDao {
    @Override
    public int count() throws SQLException {
        return 0;
    }

    @Override
    public boolean delete(Utakmica entity) throws SQLException {
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
    public Iterable<Utakmica> findAll() throws SQLException {
        return null;
    }

    @Override
    public Iterable<Utakmica> findAllById(Iterable<Long> longs) throws SQLException {
        return null;
    }

    @Override
    public Utakmica findById(Long aLong) throws SQLException {
        return null;
    }

    @Override
    public boolean save(Utakmica entity) throws SQLException {
        return false;
    }

    @Override
    public int saveAll(Iterable<Utakmica> entities) throws SQLException {
        return 0;
    }
}
