package service;

import dao.TimDao;
import dao.impl.TimDaoImpl;
import dto.TimIgracDto;
import dto.TimStatistikaDto;
import dto.TimUtakmicaStatistikaDto;

import java.util.List;

public class TimService {

    private static final TimDao timDao = new TimDaoImpl();

    public List<TimUtakmicaStatistikaDto> getTimUtakmicaStatistika() {
        return timDao.getTimUtakmicaStatistika();
    }

    public List<TimStatistikaDto> getTimStatistika() {
        return timDao.getTimStatistika();
    }

    public List<TimIgracDto> getTimoviSaIgracima() {
        return timDao.getTimoviSaIgracima();
    }

}
