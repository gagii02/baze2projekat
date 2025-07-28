package model;

public class StatistikaIgraca {

    private Long idStatistikeIgraca;

    private int poeni;

    private int asistencije;

    private int skokovi;

    private int blokade;

    private int ukradeneLopte;

    private Long idIgrac;

    public StatistikaIgraca() {
    }

    public StatistikaIgraca(Long idStatistikeIgraca, int poeni, int asistencije, int skokovi, int blokade, int ukradeneLopte, Long idIgrac) {
        this.idStatistikeIgraca = idStatistikeIgraca;
        this.poeni = poeni;
        this.asistencije = asistencije;
        this.skokovi = skokovi;
        this.blokade = blokade;
        this.ukradeneLopte = ukradeneLopte;
        this.idIgrac = idIgrac;
    }

    public Long getIdStatistikeIgraca() {
        return idStatistikeIgraca;
    }

    public void setIdStatistikeIgraca(Long idStatistikeIgraca) {
        this.idStatistikeIgraca = idStatistikeIgraca;
    }

    public int getPoeni() {
        return poeni;
    }

    public void setPoeni(int poeni) {
        this.poeni = poeni;
    }

    public int getAsistencije() {
        return asistencije;
    }

    public void setAsistencije(int asistencije) {
        this.asistencije = asistencije;
    }

    public int getSkokovi() {
        return skokovi;
    }

    public void setSkokovi(int skokovi) {
        this.skokovi = skokovi;
    }

    public int getBlokade() {
        return blokade;
    }

    public void setBlokade(int blokade) {
        this.blokade = blokade;
    }

    public int getUkradeneLopte() {
        return ukradeneLopte;
    }

    public void setUkradeneLopte(int ukradeneLopte) {
        this.ukradeneLopte = ukradeneLopte;
    }

    public Long getIdIgrac() {
        return idIgrac;
    }

    public void setIdIgrac(Long idIgrac) {
        this.idIgrac = idIgrac;
    }

    @Override
    public String toString() {
        return "StatistikaIgraca{" +
                "idStatistikeIgraca=" + idStatistikeIgraca +
                ", poeni=" + poeni +
                ", asistencije=" + asistencije +
                ", skokovi=" + skokovi +
                ", blokade=" + blokade +
                ", ukradeneLopte=" + ukradeneLopte +
                ", idIgrac=" + idIgrac +
                '}';
    }
}

