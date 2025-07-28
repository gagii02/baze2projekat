package dao.impl;

import dao.OsobaDao;
import model.Osoba;

import java.sql.SQLException;

public class OsobaDaoImpl implements OsobaDao {
    @Override
    public int count() throws SQLException {
        return 0;
    }

    @Override
    public boolean delete(Osoba entity) throws SQLException {
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
    public Iterable<Osoba> findAll() throws SQLException {
        return null;
    }

    @Override
    public Iterable<Osoba> findAllById(Iterable<Long> longs) throws SQLException {
        return null;
    }

    @Override
    public Osoba findById(Long aLong) throws SQLException {
        return null;
    }

    @Override
    public boolean save(Osoba entity) throws SQLException {
        return false;
    }

    @Override
    public int saveAll(Iterable<Osoba> entities) throws SQLException {
        return 0;
    }
}
