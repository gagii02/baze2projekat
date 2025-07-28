package transaction;

import connection.ConnectionUtil_HikariCP;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ManualCommit {

    public void handleTransaction() throws SQLException {
        System.out.println("BEFORE TRANSACTION");
        printData();

        // Prva transakcija: Povećanje budžeta tima i dodavanje igrača
        executeTransactional(
                "UPDATE Tim SET Budz = Budz + 300000 WHERE IdTM = 1",
                "INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (31, 'Aleksa', 'Avramovic', 'Serbia', 3000000, 'Igrac')",
                "INSERT INTO Igrac (IdI, Poz, Vis, Tez, Kap, IdTM) VALUES (31, 'PF', 193, 82, NULL, 1)"
        );

        System.out.println("AFTER FIRST TRANSACTION");
        printData();

        // Druga transakcija: Vraćanje budžeta tima i brisanje igrača
        executeTransactional(
                "UPDATE Tim SET Budz = Budz - 300000 WHERE IdTM = 1",
                "DELETE FROM Igrac WHERE IdI = 31",
                "DELETE FROM Osoba WHERE IdO = 31"
        );

        System.out.println("AFTER ROLLBACK TRANSACTION");
        printData();
    }

    private void printData() {
        try (Connection connection = ConnectionUtil_HikariCP.getConnection()) {
            String queryTim = "SELECT * FROM Tim WHERE IdTM = 1";
            String queryIgrac = "SELECT * FROM Igrac WHERE IdTM = 1";

            System.out.println("Podaci o timu:");
            try (PreparedStatement statement = connection.prepareStatement(queryTim)) {
                var resultSet = statement.executeQuery();
                while (resultSet.next()) {
                    System.out.printf("IdTM: %d, ImeT: %s, LokT: %s, Budz: %d, BoT: %d%n",
                            resultSet.getInt("IdTM"),
                            resultSet.getString("ImeT"),
                            resultSet.getString("LokT"),
                            resultSet.getInt("Budz"),
                            resultSet.getInt("BoT"));
                }
            }

            System.out.println("Podaci o igračima:");
            try (PreparedStatement statement = connection.prepareStatement(queryIgrac)) {
                var resultSet = statement.executeQuery();
                while (resultSet.next()) {
                    System.out.printf("IdI: %d, Poz: %s, Vis: %d, Tez: %d, Kap: %d, IdTM: %d%n",
                            resultSet.getInt("IdI"),
                            resultSet.getString("Poz"),
                            resultSet.getInt("Vis"),
                            resultSet.getInt("Tez"),
                            resultSet.getInt("Kap"),
                            resultSet.getInt("IdTM"));
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private static void executeTransactional(String... commands) {
        try (Connection connection = ConnectionUtil_HikariCP.getConnection()) {
            connection.setAutoCommit(false);

            try {
                for (String command : commands) {
                    try (PreparedStatement preparedStatement = connection.prepareStatement(command)) {
                        preparedStatement.executeUpdate();
                    }
                }
                connection.commit();
            } catch (SQLException e) {
                System.out.println("Došlo je do greške, radi se rollback: " + e.getMessage());
                connection.rollback();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}


