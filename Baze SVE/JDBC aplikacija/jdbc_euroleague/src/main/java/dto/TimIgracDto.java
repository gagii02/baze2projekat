package dto;

public class TimIgracDto {
    private String nazivTima;
    private int brojIgraca;
    private double prosecnaVisinaIgraca;

    public String getNazivTima() {
        return nazivTima;
    }

    public void setNazivTima(String nazivTima) {
        this.nazivTima = nazivTima;
    }

    public int getBrojIgraca() {
        return brojIgraca;
    }

    public void setBrojIgraca(int brojIgraca) {
        this.brojIgraca = brojIgraca;
    }

    public double getProsecnaVisinaIgraca() {
        return prosecnaVisinaIgraca;
    }

    public void setProsecnaVisinaIgraca(double prosecnaVisinaIgraca) {
        this.prosecnaVisinaIgraca = prosecnaVisinaIgraca;
    }

    @Override
    public String toString() {
        return "TimIgracDto{" +
                "nazivTima='" + nazivTima + '\'' +
                ", brojIgraca=" + brojIgraca +
                ", prosecnaVisinaIgraca=" + prosecnaVisinaIgraca +
                '}';
    }
}

