-- Sample data for 'Arena' table
INSERT INTO Arena (IdA, LokA, Kap, NazA) VALUES (1, 'Belgrade', 20000, 'Stark Arena');
INSERT INTO Arena (IdA, LokA, Kap, NazA) VALUES (2, 'Barcelona', 7500, 'Palau Blaugrana');
INSERT INTO Arena (IdA, LokA, Kap, NazA) VALUES (3, 'Istanbul', 15700, 'Sinan Erdem Dome');
INSERT INTO Arena (IdA, LokA, Kap, NazA) VALUES (4, 'Athens', 19000, 'OAKA Arena');
INSERT INTO Arena (IdA, LokA, Kap, NazA) VALUES (5, 'Madrid', 13000, 'WiZink Center');

-- Sample Data for Sezona
INSERT INTO Sezona (IdSZ, NazS, BrT) VALUES (1, TO_DATE('2023/2024','YYYY-MM-DD'), 18);
INSERT INTO Sezona (IdSZ, NazS, BrT) VALUES (2, TO_DATE('2022/2023','YYYY-MM-DD'), 18);
INSERT INTO Sezona (IdSZ, NazS, BrT) VALUES (3, TO_DATE('2021/2022','YYYY-MM-DD'), 18);
INSERT INTO Sezona (IdSZ, NazS, BrT) VALUES (4, TO_DATE('2020/2021','YYYY-MM-DD'), 18);
INSERT INTO Sezona (IdSZ, NazS, BrT) VALUES (5, TO_DATE('2019/2020','YYYY-MM-DD'), 18);

-- Sample data for 'Utakmica' table
INSERT INTO Utakmica (IdU, DatU, RezD, RezG, IdSZ, IdA) VALUES (1, TO_DATE('2023-10-01','YYYY-MM-DD'), 85, 80, 1, 1);  -- Utakmica 1, Sezona 2023/2024, Arena 1 (Stark Arena), rezultat Partizan vs Barcelona
INSERT INTO Utakmica (IdU, DatU, RezD, RezG, IdSZ, IdA) VALUES (2, TO_DATE('2023-10-05','YYYY-MM-DD'), 90, 92, 1, 2);  -- Utakmica 2, Sezona 2023/2024, Arena 2 (Palau Blaugrana), rezultat Real Madrid vs Barcelona
INSERT INTO Utakmica (IdU, DatU, RezD, RezG, IdSZ, IdA) VALUES (3, TO_DATE('2023-11-01','YYYY-MM-DD'), 87, 83, 2, 3);  -- Utakmica 3, Sezona 2022/2023, Arena 3 (Sinan Erdem Dome), rezultat Anadolu Efes vs Panathinaikos
INSERT INTO Utakmica (IdU, DatU, RezD, RezG, IdSZ, IdA) VALUES (4, TO_DATE('2023-12-01','YYYY-MM-DD'), 100, 90, 3, 4); -- Utakmica 4, Sezona 2021/2022, Arena 4 (OAKA Arena), rezultat Partizan vs Real Madrid
INSERT INTO Utakmica (IdU, DatU, RezD, RezG, IdSZ, IdA) VALUES (5, TO_DATE('2024-01-15','YYYY-MM-DD'), 110, 95, 4, 5); -- Utakmica 5, Sezona 2020/2021, Arena 5 (WiZink Center), rezultat Barcelona vs Anadolu Efes
INSERT INTO Utakmica (IdU, DatU, RezD, RezG, IdSZ, IdA) VALUES (6, TO_DATE('2024-02-01','YYYY-MM-DD'), 88, 85, 1, 1);  -- Utakmica 6, Sezona 2023/2024, Arena 6 (Allianz Arena), rezultat Bayern Munich vs CSKA Moscow
INSERT INTO Utakmica (IdU, DatU, RezD, RezG, IdSZ, IdA) VALUES (7, TO_DATE('2024-02-10','YYYY-MM-DD'), 95, 90, 1, 2);  -- Utakmica 7, Sezona 2023/2024, Arena 7 (Santiago Bernabeu), rezultat Fenerbahce vs Zalgiris
INSERT INTO Utakmica (IdU, DatU, RezD, RezG, IdSZ, IdA) VALUES (8, TO_DATE('2024-03-05','YYYY-MM-DD'), 80, 75, 1, 3);  -- Utakmica 8, Sezona 2023/2024, Arena 8 (Ljudski vrt), rezultat Baskonia vs Partizan
INSERT INTO Utakmica (IdU, DatU, RezD, RezG, IdSZ, IdA) VALUES (9, TO_DATE('2024-03-12','YYYY-MM-DD'), 98, 92, 1, 4);  -- Utakmica 9, Sezona 2023/2024, Arena 9 (Zalgirio Arena), rezultat Real Madrid vs Panathinaikos
INSERT INTO Utakmica (IdU, DatU, RezD, RezG, IdSZ, IdA) VALUES (10, TO_DATE('2024-04-01','YYYY-MM-DD'), 105, 99, 1, 5); -- Utakmica 10, Sezona 2023/2024, Arena 10 (O2 Arena), rezultat CSKA Moscow vs Barcelona

-- Sample data for 'Tim' table
INSERT INTO Tim (IdTM, ImeT, LokT, Budz, BoT) VALUES (1, 'Partizan', 'Belgrade', 20000000, 8);
INSERT INTO Tim (IdTM, ImeT, LokT, Budz, BoT) VALUES (2, 'Barcelona', 'Barcelona', 35000000, 10);
INSERT INTO Tim (IdTM, ImeT, LokT, Budz, BoT) VALUES (3, 'Anadolu Efes', 'Istanbul', 25000000, 9);
INSERT INTO Tim (IdTM, ImeT, LokT, Budz, BoT) VALUES (4, 'Panathinaikos', 'Athens', 18000000, 7);
INSERT INTO Tim (IdTM, ImeT, LokT, Budz, BoT) VALUES (5, 'Real Madrid', 'Madrid', 40000000, 12);
INSERT INTO Tim (IdTM, ImeT, LokT, Budz, BoT) VALUES (6, 'Bayern Munich', 'Munich', 22000000, 9);
INSERT INTO Tim (IdTM, ImeT, LokT, Budz, BoT) VALUES (7, 'CSKA Moscow', 'Moscow', 27000000, 11);
INSERT INTO Tim (IdTM, ImeT, LokT, Budz, BoT) VALUES (8, 'Fenerbahce', 'Istanbul', 24000000, 10);
INSERT INTO Tim (IdTM, ImeT, LokT, Budz, BoT) VALUES (9, 'Zalgiris', 'Kaunas', 16000000, 6);
INSERT INTO Tim (IdTM, ImeT, LokT, Budz, BoT) VALUES (10, 'Baskonia', 'Vitoria-Gasteiz', 21000000, 8);

-- Sample data for 'Osoba' table
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (1, 'Nikola', 'Mirotic', 'Montenegro', 3000000, 'Igrac');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (2, 'Shane', 'Larkin', 'USA', 2800000, 'Igrac');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (3, 'Mike', 'James', 'USA', 2500000, 'Igrac');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (4, 'Sasha', 'Vezenkov', 'Bulgaria', 2000000, 'Igrac');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (5, 'Walter', 'Tavares', 'Cape Verde', 2200000, 'Igrac');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (6, 'Luka', 'Doncic', 'Slovenia', 4000000, 'Igrac');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (7, 'Vasilije', 'Micic', 'Serbia', 3000000, 'Igrac');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (8, 'Rudy', 'Fernandez', 'Spain', 2200000, 'Igrac');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (9, 'Nikola', 'Kalinic', 'Serbia', 1800000, 'Igrac');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (10, 'Jan', 'Vesely', 'Czech Republic', 2500000, 'Igrac');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (11, 'Zeljko', 'Obradovic', 'Serbia', 5000000, 'Trener');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (12, 'Pablo', 'Laso', 'Spain', 4000000, 'Trener');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (13, 'Dimitris', 'Itoudis', 'Greece', 3500000, 'Trener');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (14, 'Ergin', 'Ataman', 'Turkey', 3200000, 'Trener');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (15, 'Andrea', 'Trinchieri', 'Italy', 3000000, 'Trener');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (16, 'Sreten', 'Radovic', 'Croatia', 150000, 'Sudija');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (17, 'Luigi', 'Lamonica', 'Italy', 160000, 'Sudija');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (18, 'Boris', 'Rizic', 'Serbia', 140000, 'Sudija');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (19, 'Matej', 'Bulat', 'Slovenia', 145000, 'Sudija');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (20, 'Christos', 'Christodoulou', 'Greece', 155000, 'Sudija');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (21, 'Bogdan', 'Bogdanovic', 'Serbia', 3500000, 'Igrac');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (22, 'Evan', 'Fournier', 'France', 3200000, 'Igrac');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (23, 'Victor', 'Wembanyama', 'France', 5000000, 'Igrac');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (24, 'Mario', 'Hezonja', 'Croatia', 2800000, 'Igrac');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (25, 'Dario', 'Saric', 'Croatia', 2700000, 'Igrac');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (26, 'Vladimir', 'Lucic', 'Serbia', 2200000, 'Igrac');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (27, 'Will', 'Clyburn', 'USA', 2500000, 'Igrac');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (28, 'Derrick', 'Williams', 'USA', 2300000, 'Igrac');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (29, 'Marius', 'Grigonis', 'Lithuania', 1800000, 'Igrac');
INSERT INTO Osoba (IdO, Ime, Prz, Nac, Plt, TipOs) VALUES (30, 'Janis', 'Strelneiks', 'Latvia', 1900000, 'Igrac');

-- Sample data for 'Igrac' table
INSERT INTO Igrac (IdI, Poz, Vis, Tez, Kap, IdTM) VALUES (1, 'PF', 208, 113, NULL, 1); -- Nikola Mirotic igra za Partizan
INSERT INTO Igrac (IdI, Poz, Vis, Tez, Kap, IdTM) VALUES (2, 'PG', 180, 80, NULL, 2);  -- Shane Larkin igra za Barcelonu
INSERT INTO Igrac (IdI, Poz, Vis, Tez, Kap, IdTM) VALUES (3, 'SG', 185, 85, NULL, 3);  -- Mike James igra za Anadolu Efes
INSERT INTO Igrac (IdI, Poz, Vis, Tez, Kap, IdTM) VALUES (4, 'SF', 206, 100, 1, 1);    -- Sasha Vezenkov ima Nikolu Mirotica kao kapitena i igra za Partizan
INSERT INTO Igrac (IdI, Poz, Vis, Tez, Kap, IdTM) VALUES (5, 'C', 221, 120, NULL, 5);  -- Walter Tavares igra za Real Madrid
INSERT INTO Igrac (IdI, Poz, Vis, Tez, Kap, IdTM) VALUES (6, 'SG', 201, 98, NULL, 4);  -- Luka Doncic igra za Panathinaikos
INSERT INTO Igrac (IdI, Poz, Vis, Tez, Kap, IdTM) VALUES (7, 'PG', 196, 87, NULL, 1);  -- Vasilije Micic igra za Partizan
INSERT INTO Igrac (IdI, Poz, Vis, Tez, Kap, IdTM) VALUES (8, 'SF', 197, 92, NULL, 2);  -- Rudy Fernandez igra za Barcelonu
INSERT INTO Igrac (IdI, Poz, Vis, Tez, Kap, IdTM) VALUES (9, 'PF', 203, 105, 7, 1);    -- Nikola Kalinic ima Vasilija Micica kao kapitena i igra za Partizan
INSERT INTO Igrac (IdI, Poz, Vis, Tez, Kap, IdTM) VALUES (10, 'C', 213, 115, NULL, 3); -- Jan Vesely igra za Anadolu Efes
INSERT INTO Igrac (IdI, Poz, Vis, Tez, Kap, IdTM) VALUES (21, 'SG', 198, 97, 7, 1);    -- Bogdan Bogdanovic ima Vasilija Micica kao kapitena i igra za Partizan
INSERT INTO Igrac (IdI, Poz, Vis, Tez, Kap, IdTM) VALUES (22, 'SF', 201, 95, NULL, 4); -- Evan Fournier igra za Panathinaikos
INSERT INTO Igrac (IdI, Poz, Vis, Tez, Kap, IdTM) VALUES (23, 'C', 225, 120, NULL, 5); -- Victor Wembanyama igra za Real Madrid
INSERT INTO Igrac (IdI, Poz, Vis, Tez, Kap, IdTM) VALUES (24, 'SF', 203, 100, NULL, 5);-- Mario Hezonja igra za Real Madrid
INSERT INTO Igrac (IdI, Poz, Vis, Tez, Kap, IdTM) VALUES (25, 'PF', 207, 110, 24, 5);  -- Dario Saric ima Maria Hezonju kao kapitena i igra za Real Madrid
INSERT INTO Igrac (IdI, Poz, Vis, Tez, Kap, IdTM) VALUES (26, 'SF', 202, 105, NULL, 6); -- Vladimir Lucic igra za Bayern Munich
INSERT INTO Igrac (IdI, Poz, Vis, Tez, Kap, IdTM) VALUES (27, 'PF', 203, 98, NULL, 7);  -- Will Clyburn igra za CSKA Moscow
INSERT INTO Igrac (IdI, Poz, Vis, Tez, Kap, IdTM) VALUES (28, 'SF', 205, 105, NULL, 8); -- Derrick Williams igra za Fenerbahce
INSERT INTO Igrac (IdI, Poz, Vis, Tez, Kap, IdTM) VALUES (29, 'SG', 196, 90, NULL, 9);  -- Marius Grigonis igra za Zalgiris
INSERT INTO Igrac (IdI, Poz, Vis, Tez, Kap, IdTM) VALUES (30, 'PG', 190, 85, NULL, 10); -- Janis Strelneiks igra za Baskonia

INSERT INTO Povreda (IdP, NazP, TrajO) VALUES (1, 'Povreda kolena', 12);    -- Povreda kolena, trajanje oporavka 12 nedelja
INSERT INTO Povreda (IdP, NazP, TrajO) VALUES (2, 'Povreda ramena', 8);     -- Povreda ramena, trajanje oporavka 8 nedelja
INSERT INTO Povreda (IdP, NazP, TrajO) VALUES (3, 'Povreda gležnja', 6);    -- Povreda gležnja, trajanje oporavka 6 nedelja
INSERT INTO Povreda (IdP, NazP, TrajO) VALUES (4, 'Povreda mišića', 4);     -- Povreda mišića, trajanje oporavka 4 nedelje
INSERT INTO Povreda (IdP, NazP, TrajO) VALUES (5, 'Slomljena ruka', 16);    -- Slomljena ruka, trajanje oporavka 16 nedelja

INSERT INTO Zadobija (IdP, IdI) VALUES (1, 1);  -- Nikola Mirotic je zadobio povredu kolena
INSERT INTO Zadobija (IdP, IdI) VALUES (2, 2);  -- Shane Larkin je zadobio povredu ramena
INSERT INTO Zadobija (IdP, IdI) VALUES (3, 3);  -- Mike James je zadobio povredu gležnja
INSERT INTO Zadobija (IdP, IdI) VALUES (4, 4);  -- Sasha Vezenkov je zadobio povredu mišića
INSERT INTO Zadobija (IdP, IdI) VALUES (5, 5);  -- Walter Tavares je zadobio slomljenu ruku
INSERT INTO Zadobija (IdP, IdI) VALUES (1, 6);  -- Luka Doncic je zadobio povredu kolena
INSERT INTO Zadobija (IdP, IdI) VALUES (2, 7);  -- Vasilije Micic je zadobio povredu ramena
INSERT INTO Zadobija (IdP, IdI) VALUES (3, 8);  -- Rudy Fernandez je zadobio povredu gležnja
INSERT INTO Zadobija (IdP, IdI) VALUES (4, 9);  -- Nikola Kalinic je zadobio povredu mišića
INSERT INTO Zadobija (IdP, IdI) VALUES (5, 10); -- Jan Vesely je zadobio slomljenu ruku

-- Sample data for 'Trener' table
INSERT INTO Trener (IdT, IskT, IdTM) VALUES (11, 25, 1);
INSERT INTO Trener (IdT, IskT, IdTM) VALUES (12, 20, 2);
INSERT INTO Trener (IdT, IskT, IdTM) VALUES (13, 18, 3);
INSERT INTO Trener (IdT, IskT, IdTM) VALUES (14, 15, 4);
INSERT INTO Trener (IdT, IskT, IdTM) VALUES (15, 12, 5);

-- Sample data for 'Sudija' table
INSERT INTO Sudija (IdS, IskS) VALUES (16, 10);
INSERT INTO Sudija (IdS, IskS) VALUES (17, 12);
INSERT INTO Sudija (IdS, IskS) VALUES (18, 8);
INSERT INTO Sudija (IdS, IskS) VALUES (19, 9);
INSERT INTO Sudija (IdS, IskS) VALUES (20, 11);

INSERT INTO Sudi (IdU, IdS) VALUES (1, 16);  -- Sudija Sreten Radovic sudi utakmicu 1
INSERT INTO Sudi (IdU, IdS) VALUES (1, 17);  -- Sudija Luigi Lamonica sudi utakmicu 1
INSERT INTO Sudi (IdU, IdS) VALUES (2, 18);  -- Sudija Boris Rizic sudi utakmicu 2
INSERT INTO Sudi (IdU, IdS) VALUES (2, 19);  -- Sudija Matej Bulat sudi utakmicu 2
INSERT INTO Sudi (IdU, IdS) VALUES (3, 20);  -- Sudija Christos Christodoulou sudi utakmicu 3
INSERT INTO Sudi (IdU, IdS) VALUES (3, 16);  -- Sudija Sreten Radovic sudi utakmicu 3
INSERT INTO Sudi (IdU, IdS) VALUES (4, 17);  -- Sudija Luigi Lamonica sudi utakmicu 4
INSERT INTO Sudi (IdU, IdS) VALUES (4, 18);  -- Sudija Boris Rizic sudi utakmicu 4
INSERT INTO Sudi (IdU, IdS) VALUES (5, 19);  -- Sudija Matej Bulat sudi utakmicu 5
INSERT INTO Sudi (IdU, IdS) VALUES (5, 20);  -- Sudija Christos Christodoulou sudi utakmicu 5

-- Popunjavanje tabele 'Igra'
INSERT INTO Igra (IdU, IdI, IdIgra) VALUES (1, 1, 1);   -- Nikola Mirotic igra utakmicu 1 (Partizan vs Barcelona)
INSERT INTO Igra (IdU, IdI, IdIgra) VALUES (1, 2, 2);   -- Shane Larkin igra utakmicu 1 (Partizan vs Barcelona)
INSERT INTO Igra (IdU, IdI, IdIgra) VALUES (2, 3, 3);   -- Mike James igra utakmicu 2 (Real Madrid vs Barcelona)
INSERT INTO Igra (IdU, IdI, IdIgra) VALUES (2, 4, 4);   -- Sasha Vezenkov igra utakmicu 2 (Real Madrid vs Barcelona)
INSERT INTO Igra (IdU, IdI, IdIgra) VALUES (3, 5, 5);   -- Walter Tavares igra utakmicu 3 (Anadolu Efes vs Panathinaikos)
INSERT INTO Igra (IdU, IdI, IdIgra) VALUES (3, 6, 6);   -- Luka Doncic igra utakmicu 3 (Anadolu Efes vs Panathinaikos)
INSERT INTO Igra (IdU, IdI, IdIgra) VALUES (4, 7, 7);   -- Vasilije Micic igra utakmicu 4 (Partizan vs Real Madrid)
INSERT INTO Igra (IdU, IdI, IdIgra) VALUES (4, 8, 8);   -- Rudy Fernandez igra utakmicu 4 (Partizan vs Real Madrid)
INSERT INTO Igra (IdU, IdI, IdIgra) VALUES (5, 9, 9);   -- Nikola Kalinic igra utakmicu 5 (Barcelona vs Anadolu Efes)
INSERT INTO Igra (IdU, IdI, IdIgra) VALUES (5, 10, 10); -- Jan Vesely igra utakmicu 5 (Barcelona vs Anadolu Efes)
INSERT INTO Igra (IdU, IdI, IdIgra) VALUES (1, 21, 11);   -- Alen Smailagić igra utakmicu 1 (Partizan vs Barcelona)
INSERT INTO Igra (IdU, IdI, IdIgra) VALUES (1, 22, 12);   -- Gabriel Deck igra utakmicu 1 (Partizan vs Barcelona)
INSERT INTO Igra (IdU, IdI, IdIgra) VALUES (2, 23, 13);   -- Nikola Mirotic igra utakmicu 2 (Real Madrid vs Barcelona)
INSERT INTO Igra (IdU, IdI, IdIgra) VALUES (2, 24, 14);   -- Pierre Oriola igra utakmicu 2 (Real Madrid vs Barcelona)
INSERT INTO Igra (IdU, IdI, IdIgra) VALUES (3, 25, 15);   -- Chris Singleton igra utakmicu 3 (Anadolu Efes vs Panathinaikos)
INSERT INTO Igra (IdU, IdI, IdIgra) VALUES (3, 26, 16);   -- Shane Larkin igra utakmicu 3 (Anadolu Efes vs Panathinaikos)
INSERT INTO Igra (IdU, IdI, IdIgra) VALUES (4, 27, 17);   -- Kostas Sloukas igra utakmicu 4 (Partizan vs Real Madrid)
INSERT INTO Igra (IdU, IdI, IdIgra) VALUES (4, 28, 18);   -- Nick Calathes igra utakmicu 4 (Partizan vs Real Madrid)
INSERT INTO Igra (IdU, IdI, IdIgra) VALUES (5, 29, 19);   -- Will Clyburn igra utakmicu 5 (Barcelona vs Anadolu Efes)
INSERT INTO Igra (IdU, IdI, IdIgra) VALUES (5, 30, 20);  -- Sertac Sanli igra utakmicu 5 (Barcelona vs Anadolu Efes)

-- Popunjavanje tabele 'Statistika_igraca'
INSERT INTO Statistika_igraca (IdSI, Poen, Asis, Skok, Blok, Ukrl, IdIgra) VALUES (1, 20, 3, 8, 1, 2, 1);   -- Nikola Mirotic, utakmica 1
INSERT INTO Statistika_igraca (IdSI, Poen, Asis, Skok, Blok, Ukrl, IdIgra) VALUES (2, 18, 5, 4, 2, 1, 2);   -- Shane Larkin, utakmica 1
INSERT INTO Statistika_igraca (IdSI, Poen, Asis, Skok, Blok, Ukrl, IdIgra) VALUES (3, 25, 6, 5, 0, 3, 3);   -- Mike James, utakmica 2
INSERT INTO Statistika_igraca (IdSI, Poen, Asis, Skok, Blok, Ukrl, IdIgra) VALUES (4, 22, 7, 3, 1, 4, 4);   -- Sasha Vezenkov, utakmica 2
INSERT INTO Statistika_igraca (IdSI, Poen, Asis, Skok, Blok, Ukrl, IdIgra) VALUES (5, 15, 1, 12, 3, 1, 5);  -- Walter Tavares, utakmica 3
INSERT INTO Statistika_igraca (IdSI, Poen, Asis, Skok, Blok, Ukrl, IdIgra) VALUES (6, 18, 8, 7, 0, 2, 6);   -- Luka Doncic, utakmica 3
INSERT INTO Statistika_igraca (IdSI, Poen, Asis, Skok, Blok, Ukrl, IdIgra) VALUES (7, 17, 4, 6, 2, 3, 7);   -- Vasilije Micic, utakmica 4
INSERT INTO Statistika_igraca (IdSI, Poen, Asis, Skok, Blok, Ukrl, IdIgra) VALUES (8, 20, 3, 5, 1, 1, 8);  -- Rudy Fernandez, utakmica 4
INSERT INTO Statistika_igraca (IdSI, Poen, Asis, Skok, Blok, Ukrl, IdIgra) VALUES (9, 24, 5, 10, 0, 2, 9);  -- Nikola Kalinic, utakmica 5
INSERT INTO Statistika_igraca (IdSI, Poen, Asis, Skok, Blok, Ukrl, IdIgra) VALUES (10, 19, 4, 8, 1, 3, 10); -- Jan Vesely, utakmica 5
INSERT INTO Statistika_igraca (IdSI, Poen, Asis, Skok, Blok, Ukrl, IdIgra) VALUES (11, 23, 6, 7, 1, 2, 11);   -- Alen Smailagić, utakmica 1
INSERT INTO Statistika_igraca (IdSI, Poen, Asis, Skok, Blok, Ukrl, IdIgra) VALUES (12, 20, 4, 5, 0, 3, 12);   -- Gabriel Deck, utakmica 1
INSERT INTO Statistika_igraca (IdSI, Poen, Asis, Skok, Blok, Ukrl, IdIgra) VALUES (13, 28, 7, 3, 2, 4, 13);   -- Nikola Mirotic, utakmica 2
INSERT INTO Statistika_igraca (IdSI, Poen, Asis, Skok, Blok, Ukrl, IdIgra) VALUES (14, 18, 9, 4, 1, 2, 14);   -- Pierre Oriola, utakmica 2
INSERT INTO Statistika_igraca (IdSI, Poen, Asis, Skok, Blok, Ukrl, IdIgra) VALUES (15, 30, 4, 6, 2, 5, 15);   -- Chris Singleton, utakmica 3
INSERT INTO Statistika_igraca (IdSI, Poen, Asis, Skok, Blok, Ukrl, IdIgra) VALUES (16, 22, 6, 5, 1, 4, 16);   -- Shane Larkin, utakmica 3
INSERT INTO Statistika_igraca (IdSI, Poen, Asis, Skok, Blok, Ukrl, IdIgra) VALUES (17, 19, 5, 7, 1, 3, 17);   -- Kostas Sloukas, utakmica 4
INSERT INTO Statistika_igraca (IdSI, Poen, Asis, Skok, Blok, Ukrl, IdIgra) VALUES (18, 21, 8, 4, 2, 1, 18);   -- Nick Calathes, utakmica 4
INSERT INTO Statistika_igraca (IdSI, Poen, Asis, Skok, Blok, Ukrl, IdIgra) VALUES (19, 27, 3, 11, 0, 2, 19);   -- Will Clyburn, utakmica 5
INSERT INTO Statistika_igraca (IdSI, Poen, Asis, Skok, Blok, Ukrl, IdIgra) VALUES (20, 23, 5, 9, 1, 3, 20);   -- Sertac Sanli, utakmica 5

INSERT INTO Trening (IdTR, VrsT, IdT) VALUES (1, 'Suterski trening', 11);            -- Trening 1: Suterski trening, organizuje trener Partizana
INSERT INTO Trening (IdTR, VrsT, IdT) VALUES (2, 'Trening fizičke pripreme', 12);    -- Trening 2: Trening fizičke pripreme, organizuje trener Barcelone
INSERT INTO Trening (IdTR, VrsT, IdT) VALUES (3, 'Trening za napad', 13);            -- Trening 3: Trening za napad, organizuje trener Anadolu Efesa
INSERT INTO Trening (IdTR, VrsT, IdT) VALUES (4, 'Trening za odbranu', 14);          -- Trening 4: Trening za odbranu, organizuje trener Panathinaikosa
INSERT INTO Trening (IdTR, VrsT, IdT) VALUES (5, 'Trening za slobodna bacanja', 15); -- Trening 5: Trening za slobodna bacanja, organizuje trener Real Madrida

INSERT INTO Dolazi (IdI, IdTR) VALUES (1, 1);  -- Nikola Mirotic (Partizan) dolazi na suterski trening
INSERT INTO Dolazi (IdI, IdTR) VALUES (2, 1);  -- Shane Larkin (Partizan) dolazi na suterski trening
INSERT INTO Dolazi (IdI, IdTR) VALUES (7, 1);  -- Vasilije Micic (Partizan) dolazi na suterski trening
INSERT INTO Dolazi (IdI, IdTR) VALUES (21, 1); -- Bogdan Bogdanovic (Partizan) dolazi na suterski trening
INSERT INTO Dolazi (IdI, IdTR) VALUES (24, 1); -- Mario Hezonja (Partizan) dolazi na suterski trening
INSERT INTO Dolazi (IdI, IdTR) VALUES (8, 2);  -- Rudy Fernandez (Barcelona) dolazi na trening fizičke pripreme
INSERT INTO Dolazi (IdI, IdTR) VALUES (22, 2); -- Evan Fournier (Barcelona) dolazi na trening fizičke pripreme
INSERT INTO Dolazi (IdI, IdTR) VALUES (3, 2);  -- Mike James (Barcelona) dolazi na trening fizičke pripreme
INSERT INTO Dolazi (IdI, IdTR) VALUES (23, 2); -- Victor Wembanyama (Barcelona) dolazi na trening fizičke pripreme
INSERT INTO Dolazi (IdI, IdTR) VALUES (25, 2); -- Dario Saric (Barcelona) dolazi na trening fizičke pripreme
INSERT INTO Dolazi (IdI, IdTR) VALUES (4, 3);  -- Sasha Vezenkov (Anadolu Efes) dolazi na trening za napad
INSERT INTO Dolazi (IdI, IdTR) VALUES (6, 3);  -- Luka Doncic (Anadolu Efes) dolazi na trening za napad
INSERT INTO Dolazi (IdI, IdTR) VALUES (9, 3);  -- Nikola Kalinic (Anadolu Efes) dolazi na trening za napad
INSERT INTO Dolazi (IdI, IdTR) VALUES (10, 3); -- Jan Vesely (Anadolu Efes) dolazi na trening za napad
INSERT INTO Dolazi (IdI, IdTR) VALUES (5, 4);  -- Walter Tavares (Panathinaikos) dolazi na trening za odbranu


-- Insert podaci u tabelu 'Transfer'
INSERT INTO Transfer (IdTF, DatT, CenaT, NoviT, IdI) VALUES (1, TO_DATE('2024-06-15','YYYY-MM-DD'), 5000000, 'Barcelona', 1);    -- Nikola Mirotic prelazi iz Partizana u Barcelonu za 5 miliona
INSERT INTO Transfer (IdTF, DatT, CenaT, NoviT, IdI) VALUES (2, TO_DATE('2024-06-17','YYYY-MM-DD'), 4500000, 'Anadolu Efes', 2); -- Shane Larkin prelazi iz Partizana u Anadolu Efes za 4.5 miliona
INSERT INTO Transfer (IdTF, DatT, CenaT, NoviT, IdI) VALUES (3, TO_DATE('2024-06-20','YYYY-MM-DD'), 4000000, 'Real Madrid', 3);  -- Mike James prelazi iz Partizana u Real Madrid za 4 miliona
INSERT INTO Transfer (IdTF, DatT, CenaT, NoviT, IdI) VALUES (4, TO_DATE('2024-06-22','YYYY-MM-DD'), 3500000, 'Partizan', 4);     -- Sasha Vezenkov prelazi iz Panathinaikosa u Partizan za 3.5 miliona
INSERT INTO Transfer (IdTF, DatT, CenaT, NoviT, IdI) VALUES (5, TO_DATE('2024-06-25','YYYY-MM-DD'), 3000000, 'Barcelona', 5);    -- Walter Tavares prelazi iz Panathinaikosa u Barcelonu za 3 miliona
INSERT INTO Transfer (IdTF, DatT, CenaT, NoviT, IdI) VALUES (6, TO_DATE('2024-06-28','YYYY-MM-DD'), 6000000, 'Anadolu Efes', 6); -- Luka Doncic prelazi iz Real Madrida u Anadolu Efes za 6 miliona
INSERT INTO Transfer (IdTF, DatT, CenaT, NoviT, IdI) VALUES (7, TO_DATE('2024-07-01','YYYY-MM-DD'), 7000000, 'Panathinaikos', 7);-- Vasilije Micic prelazi iz Real Madrida u Panathinaikos za 7 miliona
INSERT INTO Transfer (IdTF, DatT, CenaT, NoviT, IdI) VALUES (8, TO_DATE('2024-07-05','YYYY-MM-DD'), 5200000, 'Real Madrid', 8);  -- Rudy Fernandez prelazi iz Barcelone u Real Madrid za 5.2 miliona
INSERT INTO Transfer (IdTF, DatT, CenaT, NoviT, IdI) VALUES (9, TO_DATE('2024-07-08','YYYY-MM-DD'), 5500000, 'Partizan', 9);     -- Nikola Kalinic prelazi iz Barcelone u Partizan za 5.5 miliona
INSERT INTO Transfer (IdTF, DatT, CenaT, NoviT, IdI) VALUES (10, TO_DATE('2024-07-10','YYYY-MM-DD'), 4000000, 'Barcelona', 10);  -- Jan Vesely prelazi iz Panathinaikosa u Barcelonu za 4 miliona
