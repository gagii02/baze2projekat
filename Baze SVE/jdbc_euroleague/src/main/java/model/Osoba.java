package model;

public class Osoba {

    private Long idOsoba;

    private String ime;

    private String prezime;

    private String nacionalnost;

    private double plata;

    private String tipOsobe;


    public Osoba() {
    }

    public Osoba(Long idOsoba, String ime, String prezime, String nacionalnost, double plata, String tipOsobe) {
        this.idOsoba = idOsoba;
        this.ime = ime;
        this.prezime = prezime;
        this.nacionalnost = nacionalnost;
        this.plata = plata;
        this.tipOsobe = tipOsobe;
    }

    public Long getIdOsoba() {
        return idOsoba;
    }

    public void setIdOsoba(Long idOsoba) {
        this.idOsoba = idOsoba;
    }

    public String getIme() {
        return ime;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public String getPrezime() {
        return prezime;
    }

    public void setPrezime(String prezime) {
        this.prezime = prezime;
    }

    public String getNacionalnost() {
        return nacionalnost;
    }

    public void setNacionalnost(String nacionalnost) {
        this.nacionalnost = nacionalnost;
    }

    public double getPlata() {
        return plata;
    }

    public void setPlata(double plata) {
        this.plata = plata;
    }

    public String getTipOsobe() {
        return tipOsobe;
    }

    public void setTipOsobe(String tipOsobe) {
        this.tipOsobe = tipOsobe;
    }

    @Override
    public String toString() {
        return "Osoba{" +
                "idOsoba=" + idOsoba +
                ", ime='" + ime + '\'' +
                ", prezime='" + prezime + '\'' +
                ", nacionalnost='" + nacionalnost + '\'' +
                ", plata=" + plata +
                ", tipOsobe='" + tipOsobe + '\'' +
                '}';
    }
}

