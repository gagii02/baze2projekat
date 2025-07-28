package service;

import dao.IgracDao;
import dao.impl.IgracDaoImpl;
import model.Igrac;

import java.sql.SQLException;
import java.util.List;

public class IgracService {

    private static final IgracDao igracDAO = new IgracDaoImpl();

    public List<Igrac> getAllIgraci() throws SQLException {
        return igracDAO.getAllIgraci();
    }

}