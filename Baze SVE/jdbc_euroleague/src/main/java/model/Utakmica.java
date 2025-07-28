package model;

import java.util.Date;

public class Utakmica {

    private Long idUtakmica;

    private Date datum;

    private int rezulatDomacih;

    private int rezulatGostujucih;

    private Long idSezone;

    private Long idArena;


    public Utakmica() {
    }

    public Utakmica(Long idUtakmica, Date datum, int rezulatDomacih, int rezulatGostujucih, Long idSezone, Long idArena) {
        this.idUtakmica = idUtakmica;
        this.datum = datum;
        this.rezulatDomacih = rezulatDomacih;
        this.rezulatGostujucih = rezulatGostujucih;
        this.idSezone = idSezone;
        this.idArena = idArena;
    }

    public Long getIdUtakmica() {
        return idUtakmica;
    }

    public void setIdUtakmica(Long idUtakmica) {
        this.idUtakmica = idUtakmica;
    }

    public Date getDatum() {
        return datum;
    }

    public void setDatum(Date datum) {
        this.datum = datum;
    }

    public int getRezulatDomacih() {
        return rezulatDomacih;
    }

    public void setRezulatDomacih(int rezulatDomacih) {
        this.rezulatDomacih = rezulatDomacih;
    }

    public int getRezulatGostujucih() {
        return rezulatGostujucih;
    }

    public void setRezulatGostujucih(int rezulatGostujucih) {
        this.rezulatGostujucih = rezulatGostujucih;
    }

    public Long getIdSezone() {
        return idSezone;
    }

    public void setIdSezone(Long idSezone) {
        this.idSezone = idSezone;
    }

    public Long getIdArena() {
        return idArena;
    }

    public void setIdArena(Long idArena) {
        this.idArena = idArena;
    }

    @Override
    public String toString() {
        return "Utakmica{" +
                "idUtakmica=" + idUtakmica +
                ", datum=" + datum +
                ", rezulatDomacih=" + rezulatDomacih +
                ", rezulatGostujucih=" + rezulatGostujucih +
                ", idSezone=" + idSezone +
                ", idArena=" + idArena +
                '}';
    }
}
