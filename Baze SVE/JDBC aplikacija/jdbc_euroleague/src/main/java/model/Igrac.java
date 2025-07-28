package model;

public class Igrac {
    private Long idIgrac;

    private String pozicija;

    private String visina;

    private String tezina;

    private int kapacitet;

    private Long idTim;


    public Igrac() {
    }

    public Igrac(Long idIgrac, String pozicija, String visina, String tezina, int kapacitet, Long idTima) {
        this.idIgrac = idIgrac;
        this.pozicija = pozicija;
        this.visina = visina;
        this.tezina = tezina;
        this.kapacitet = kapacitet;
        this.idTim = idTima;
    }

    public Long getIdIgrac() {
        return idIgrac;
    }

    public void setIdIgrac(Long idIgrac) {
        this.idIgrac = idIgrac;
    }

    public String getPozicija() {
        return pozicija;
    }

    public void setPozicija(String pozicija) {
        this.pozicija = pozicija;
    }

    public String getVisina() {
        return visina;
    }

    public void setVisina(String visina) {
        this.visina = visina;
    }

    public String getTezina() {
        return tezina;
    }

    public void setTezina(String tezina) {
        this.tezina = tezina;
    }

    public int getKapacitet() {
        return kapacitet;
    }

    public void setKapacitet(int kapacitet) {
        this.kapacitet = kapacitet;
    }

    public Long getIdTima() {
        return idTim;
    }

    public void setIdTim(Long idTima) {
        this.idTim = idTima;
    }

    @Override
    public String toString() {
        return "Igrac{" +
                "idIgrac=" + idIgrac +
                ", pozicija='" + pozicija + '\'' +
                ", visina='" + visina + '\'' +
                ", tezina='" + tezina + '\'' +
                ", kapacitet=" + kapacitet +
                ", idTima=" + idTim +
                '}';
    }

    public static String getFormattedHeader() {
        return String.format("%-10s %-15s %-10s %-10s %-12s %-10s",
                "ID Igrac", "Pozicija", "Visina", "Tezina", "Kapacitet", "ID Tim");
    }
}

