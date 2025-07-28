package dao;

import model.Igrac;

import java.util.List;

public interface IgracDao extends CRUDDao<Igrac, Long>{

    List<Igrac> getAllIgraci();

}
