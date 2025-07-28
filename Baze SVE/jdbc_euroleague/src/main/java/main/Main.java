package main;

import UI_handler.MainUIHandler;
import connection.ConnectionUtil_HikariCP;

import java.sql.Connection;

public class Main {
    public static void main(String[] args) {
        System.setProperty(org.slf4j.simple.SimpleLogger.DEFAULT_LOG_LEVEL_KEY, "WARN");

        MainUIHandler mainUIHandler = new MainUIHandler();
        try {
            mainUIHandler.handleMainMenu();
            ConnectionUtil_HikariCP.closeDataSource();
        } catch (Exception e) {
            ConnectionUtil_HikariCP.closeDataSource();
        }
    }
}
