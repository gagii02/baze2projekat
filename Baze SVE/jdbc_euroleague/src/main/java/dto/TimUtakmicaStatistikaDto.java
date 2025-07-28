package dto;

import java.util.Date;

public class TimUtakmicaStatistikaDto {
    private String tim;
    private Date datumUtakmice;
    private int ukupanBrojStatistika;
    private int ukupanBrojPoena;
    private double prosecanBrojPoena;

    public String getTim() {
        return tim;
    }

    public void setTim(String tim) {
        this.tim = tim;
    }

    public Date getDatumUtakmice() {
        return datumUtakmice;
    }

    public void setDatumUtakmice(Date datumUtakmice) {
        this.datumUtakmice = datumUtakmice;
    }

    public int getUkupanBrojStatistika() {
        return ukupanBrojStatistika;
    }

    public void setUkupanBrojStatistika(int ukupanBrojStatistika) {
        this.ukupanBrojStatistika = ukupanBrojStatistika;
    }

    public int getUkupanBrojPoena() {
        return ukupanBrojPoena;
    }

    public void setUkupanBrojPoena(int ukupanBrojPoena) {
        this.ukupanBrojPoena = ukupanBrojPoena;
    }

    public double getProsecanBrojPoena() {
        return prosecanBrojPoena;
    }

    public void setProsecanBrojPoena(double prosecanBrojPoena) {
        this.prosecanBrojPoena = prosecanBrojPoena;
    }

    @Override
    public String toString() {
        return "TimUtakmicaStatistikaDto{" +
                "tim='" + tim + '\'' +
                ", datumUtakmice=" + datumUtakmice +
                ", ukupanBrojStatistika=" + ukupanBrojStatistika +
                ", ukupanBrojPoena=" + ukupanBrojPoena +
                ", prosecanBrojPoena=" + prosecanBrojPoena +
                '}';
    }
}
