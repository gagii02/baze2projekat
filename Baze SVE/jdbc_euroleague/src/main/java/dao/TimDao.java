package dao;

import dto.TimIgracDto;
import dto.TimStatistikaDto;
import dto.TimUtakmicaStatistikaDto;
import model.Tim;

import java.util.List;

public interface TimDao extends CRUDDao<Tim, Long>{

    List<TimUtakmicaStatistikaDto> getTimUtakmicaStatistika();

    List<TimStatistikaDto> getTimStatistika();

    List<TimIgracDto> getTimoviSaIgracima();

}
