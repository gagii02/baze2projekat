package dto;

public class TimStatistikaDto {
    private String tim;
    private int brojStatistika;
    private int ukupnoAsistencija;
    private int ukupnoSkokova;
    private int ukupnoBlokova;
    private double ukupnaPlataTima;

    public String getTim() {
        return tim;
    }

    public void setTim(String tim) {
        this.tim = tim;
    }

    public int getBrojStatistika() {
        return brojStatistika;
    }

    public void setBrojStatistika(int brojStatistika) {
        this.brojStatistika = brojStatistika;
    }

    public int getUkupnoAsistencija() {
        return ukupnoAsistencija;
    }

    public void setUkupnoAsistencija(int ukupnoAsistencija) {
        this.ukupnoAsistencija = ukupnoAsistencija;
    }

    public int getUkupnoSkokova() {
        return ukupnoSkokova;
    }

    public void setUkupnoSkokova(int ukupnoSkokova) {
        this.ukupnoSkokova = ukupnoSkokova;
    }

    public int getUkupnoBlokova() {
        return ukupnoBlokova;
    }

    public void setUkupnoBlokova(int ukupnoBlokova) {
        this.ukupnoBlokova = ukupnoBlokova;
    }

    public double getUkupnaPlataTima() {
        return ukupnaPlataTima;
    }

    public void setUkupnaPlataTima(double ukupnaPlataTima) {
        this.ukupnaPlataTima = ukupnaPlataTima;
    }

    @Override
    public String toString() {
        return "TimStatistikaDto{" +
                "tim='" + tim + '\'' +
                ", brojStatistika=" + brojStatistika +
                ", ukupnoAsistencija=" + ukupnoAsistencija +
                ", ukupnoSkokova=" + ukupnoSkokova +
                ", ukupnoBlokova=" + ukupnoBlokova +
                ", ukupnaPlataTima=" + ukupnaPlataTima +
                '}';
    }
}

