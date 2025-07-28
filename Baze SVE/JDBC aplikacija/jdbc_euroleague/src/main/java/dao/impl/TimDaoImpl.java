package dao.impl;

import connection.ConnectionUtil_HikariCP;
import dao.TimDao;
import dto.TimIgracDto;
import dto.TimStatistikaDto;
import dto.TimUtakmicaStatistikaDto;
import model.Tim;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TimDaoImpl implements TimDao {

    @Override
    public int count() throws SQLException {
        return 0;
    }

    @Override
    public boolean delete(Tim entity) throws SQLException {
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
    public Iterable<Tim> findAll() throws SQLException {
        return null;
    }

    @Override
    public Iterable<Tim> findAllById(Iterable<Long> longs) throws SQLException {
        return null;
    }

    @Override
    public Tim findById(Long aLong) throws SQLException {
        return null;
    }

    @Override
    public boolean save(Tim entity) throws SQLException {
        return false;
    }

    @Override
    public int saveAll(Iterable<Tim> entities) throws SQLException {
        return 0;
    }

    @Override
    public List<TimUtakmicaStatistikaDto> getTimUtakmicaStatistika() {
        List<TimUtakmicaStatistikaDto> rezultati = new ArrayList<>();
        String sql = """
                SELECT
                    T.ImeT AS Tim,
                    U.DatU AS DatumUtakmice,
                    COUNT(SI.IdSI) AS UkupanBrojStatistika,
                    SUM(SI.Poen) AS UkupanBrojPoena,
                    AVG(SI.Poen) AS ProsecanBrojPoena
                FROM
                    Tim T
                LEFT JOIN
                    Igrac I ON T.IdTM = I.IdTM
                LEFT JOIN
                    Igra IG ON I.IdI = IG.IdI
                LEFT JOIN
                    Utakmica U ON IG.IdU = U.IdU
                LEFT JOIN
                    Statistika_igraca SI ON IG.IdIgra = SI.IdIgra
                GROUP BY
                    T.ImeT, U.DatU
                HAVING
                    SUM(SI.Poen) > 10
                ORDER BY
                    ProsecanBrojPoena DESC
        """;

        try (Connection connection = ConnectionUtil_HikariCP.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                TimUtakmicaStatistikaDto dto = new TimUtakmicaStatistikaDto();
                dto.setTim(resultSet.getString("Tim"));
                dto.setDatumUtakmice(resultSet.getDate("DatumUtakmice"));
                dto.setUkupanBrojStatistika(resultSet.getInt("UkupanBrojStatistika"));
                dto.setUkupanBrojPoena(resultSet.getInt("UkupanBrojPoena"));
                dto.setProsecanBrojPoena(resultSet.getDouble("ProsecanBrojPoena"));
                rezultati.add(dto);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rezultati;
    }

    @Override
    public List<TimStatistikaDto> getTimStatistika() {
        List<TimStatistikaDto> rezultati = new ArrayList<>();
        String sql = """
        SELECT 
            T.ImeT AS Tim,
            COUNT(SI.IdSI) AS BrojStatistika,
            SUM(SI.Asis) AS UkupnoAsistencija,
            SUM(SI.Skok) AS UkupnoSkokova,
            SUM(SI.Blok) AS UkupnoBlokova,
            SUM(O.Plt) AS UkupnaPlataTima
        FROM 
            Tim T
        LEFT JOIN 
            Igrac I ON T.IdTM = I.IdTM
        LEFT JOIN 
            Statistika_igraca SI ON I.IdI = SI.IdIgra
        LEFT JOIN 
            Osoba O ON I.IdI = O.IdO
        GROUP BY 
            T.ImeT
        HAVING 
            SUM(SI.Skok) > 20
        ORDER BY 
            UkupnaPlataTima DESC
    """;

        try (Connection connection = ConnectionUtil_HikariCP.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                TimStatistikaDto dto = new TimStatistikaDto();
                dto.setTim(resultSet.getString("Tim"));
                dto.setBrojStatistika(resultSet.getInt("BrojStatistika"));
                dto.setUkupnoAsistencija(resultSet.getInt("UkupnoAsistencija"));
                dto.setUkupnoSkokova(resultSet.getInt("UkupnoSkokova"));
                dto.setUkupnoBlokova(resultSet.getInt("UkupnoBlokova"));
                dto.setUkupnaPlataTima(resultSet.getDouble("UkupnaPlataTima"));
                rezultati.add(dto);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rezultati;
    }

    @Override
    public List<TimIgracDto> getTimoviSaIgracima() {
        List<TimIgracDto> rezultati = new ArrayList<>();
        String sql = """
        SELECT 
            t.ImeT AS Naziv_Tima, 
            COUNT(i.IdI) AS Broj_Igraca,
            AVG(i.Vis) AS Prosečna_Visina_Igraca
        FROM 
            Tim t
        LEFT JOIN 
            Igrac i ON t.IdTM = i.IdTM
        GROUP BY 
            t.ImeT
        ORDER BY 
            Broj_Igraca DESC
    """;

        try (Connection connection = ConnectionUtil_HikariCP.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                TimIgracDto dto = new TimIgracDto();
                dto.setNazivTima(resultSet.getString("Naziv_Tima"));
                dto.setBrojIgraca(resultSet.getInt("Broj_Igraca"));
                dto.setProsecnaVisinaIgraca(resultSet.getDouble("Prosečna_Visina_Igraca"));
                rezultati.add(dto);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rezultati;
    }

}
