package UI_handler;


import dto.TimIgracDto;
import dto.TimStatistikaDto;
import dto.TimUtakmicaStatistikaDto;
import model.Igrac;
import service.IgracService;
import service.TimService;
import transaction.ManualCommit;

import java.sql.SQLException;
import java.util.List;
import java.util.Scanner;

public class MainUIHandler {

    public static Scanner sc = new Scanner(System.in);

    private final IgracService igracService = new IgracService();
    private final TimService timService = new TimService();
    private static final ManualCommit manualTransactions = new ManualCommit();

    public void handleMainMenu() {

        String answer;
        do {
            System.out.println("\nOdaberite opciju:");
            System.out.println("1 - Jednostavan upit");
            System.out.println("2 - Kompleksan upit 1");
            System.out.println("3 - Kompleksan upit 2 ");
            System.out.println("4 - Transakcija ");
            System.out.println("5 - Prikaz svih igraca (provera) ");
            System.out.println("X - Izlazak iz programa");

            answer = sc.nextLine();

            switch (answer) {
                case "1":
                    prikaziTimoveSaIgracima();
                    break;
                case "2":
                    prikaziTimUtakmicaStatistika();
                    break;
                case "3":
                    prikaziTimStatistika();
                    break;
                case "4":
                    transakcija();
                    break;
                case "5":
                    showAllIgraci();
                    break;
                case "X":
                    System.out.println("Izlazak iz programa.");
                    break;
                default:
                    System.out.println("Nepoznata opcija. Pokušajte ponovo.");
            }

        } while (!answer.equalsIgnoreCase("X"));

        sc.close();
    }

    public void prikaziTimoveSaIgracima() {
        List<TimIgracDto> rezultati = timService.getTimoviSaIgracima();
        rezultati.forEach(System.out::println);
    }

    public void prikaziTimUtakmicaStatistika() {
        List<TimUtakmicaStatistikaDto> rezultati = timService.getTimUtakmicaStatistika();
        rezultati.forEach(System.out::println);
    }

    public void prikaziTimStatistika() {
        List<TimStatistikaDto> rezultati = timService.getTimStatistika();
        rezultati.forEach(System.out::println);
    }

    private void transakcija(){
        try{
            manualTransactions.handleTransaction();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    private void showAllIgraci() {
        try {
            List<Igrac> igraci = igracService.getAllIgraci();
            if (igraci.isEmpty()) {
                System.out.println("Nema dostupnih igrača.");
            } else {
                System.out.println(Igrac.getFormattedHeader());
                for (Igrac igrac : igraci) {
                    System.out.println(igrac);
                }
            }
        } catch (SQLException e) {
            System.out.println("Greška prilikom preuzimanja svih igrača: " + e.getMessage());
        }
    }
}

