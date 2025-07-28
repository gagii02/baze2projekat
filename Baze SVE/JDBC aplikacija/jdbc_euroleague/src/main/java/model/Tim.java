package model;

public class Tim {

    private Long idTim;

    private String imeTima;

    private String lokacija;

    private double budzet;

    private int brojOsvojenihTitula;

    public Tim() {
    }

    public Tim(Long idTim, String imeTima, String lokacija, double budzet, int brojOsvojenihTitula) {
        this.idTim = idTim;
        this.imeTima = imeTima;
        this.lokacija = lokacija;
        this.budzet = budzet;
        this.brojOsvojenihTitula = brojOsvojenihTitula;
    }

    public Long getIdTim() {
        return idTim;
    }

    public void setIdTim(Long idTim) {
        this.idTim = idTim;
    }

    public String getImeTima() {
        return imeTima;
    }

    public void setImeTima(String imeTima) {
        this.imeTima = imeTima;
    }

    public String getLokacija() {
        return lokacija;
    }

    public void setLokacija(String lokacija) {
        this.lokacija = lokacija;
    }

    public double getBudzet() {
        return budzet;
    }

    public void setBudzet(double budzet) {
        this.budzet = budzet;
    }

    public int getBrojOsvojenihTitula() {
        return brojOsvojenihTitula;
    }

    public void setBrojOsvojenihTitula(int brojOsvojenihTitula) {
        this.brojOsvojenihTitula = brojOsvojenihTitula;
    }

    @Override
    public String toString() {
        return "Tim{" +
                "idTim=" + idTim +
                ", imeTima='" + imeTima + '\'' +
                ", lokacija='" + lokacija + '\'' +
                ", budzet=" + budzet +
                ", brojOsvojenihTitula=" + brojOsvojenihTitula +
                '}';
    }
}
