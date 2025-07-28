package dao.impl;

import dao.StatistikaIgracaDao;
import model.StatistikaIgraca;

import java.sql.SQLException;

public class StatistikaIgracaDaoImpl implements StatistikaIgracaDao {
    @Override
    public int count() throws SQLException {
        return 0;
    }

    @Override
    public boolean delete(StatistikaIgraca entity) throws SQLException {
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
    public Iterable<StatistikaIgraca> findAll() throws SQLException {
        return null;
    }

    @Override
    public Iterable<StatistikaIgraca> findAllById(Iterable<Long> longs) throws SQLException {
        return null;
    }

    @Override
    public StatistikaIgraca findById(Long aLong) throws SQLException {
        return null;
    }

    @Override
    public boolean save(StatistikaIgraca entity) throws SQLException {
        return false;
    }

    @Override
    public int saveAll(Iterable<StatistikaIgraca> entities) throws SQLException {
        return 0;
    }
}
