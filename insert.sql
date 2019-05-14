INSERT INTO prowadzacy(imię,nazwisko,nr_tel,e_mail) VALUES 
('Dante','Decker',	'875959527',	'venenatisvel@laciniaSed.com'),
('Kieran','Hahn',	'878583833',	'dignissim@Craseget.ca'),
('Sade','Holt',	    '734329506',	'rci@sagittisplacerat.ca'),
('Paula','Herring',	'759597929',	'felis.eget@risusDonec.org')
;
--4
INSERT INTO kursy(jezyk,poziom,ilosc_godz,cena) VALUES 
('angielski','C1',30,500),
('angielski','B1',30,450),
('hiszpański','A1',40,350),
('hiszpański','B1',40,550),
('angielski','A2',20,300),
('włoski','A1',20,250)
;
--6
INSERT INTO grupy_jezykowe(godz_przer,data_rozp,egz_ustny,egz_pisemny_data,
egz_pisemny_godz,prowadzacy_id,kursy_id) VALUES
(3,'2019-03-01','2019-06-12','2019-06-10','12:00',1,1),--1 angielski
(20,'2019-01-04','2019-05-06','2019-04-30','15:00',3,6),--2 włoski
(30,'2018-10-27','2019-01-22','2019-02-01','11:00',4,2),--3 angielski
(10,'2019-01-20','2019-05-20','2019-05-17','16:00',4,1)--4 angielski
;
INSERT INTO grupy_jezykowe(godz_przer,data_rozp,prowadzacy_id,kursy_id) VALUES
(0,'2019-06-02',4,5),--5 angielski
(0,'2019-05-30',2,3),--6 hiszpański
(1,'2019-05-04',3,5)--7 angielski
;
--7    
INSERT INTO uczestnicy(imię,nazwisko,nr_tel,adres,e_mail) VALUES 
('Fay','Adams',         '780746018', 'ul. Chmieleńska 2 83-300 Kartuzy',	                    'et@bibendumsed.com'),
('Cody','Davenport',	'466352323', 'ul. Rębkowska 88 04-375 Warszawa',	                    'montes.ridiculus@sitametante.edu'),
('Thane','Joseph',	    '235635128', 'ul. Stroma 91 80-012 Gdańsk',	                        'ultricies@dolorFusce.ca'),
('Dominique','Lynch',	'437933152', 'ul. Bałkańska 79 85-167 Bydgoszcz',	                    'eget.tincidunt@estcongue.edu'),
('Lisandra','Thornton', '158172224', 'ul. Gojawiczyńskiej Poli 64 47-230 Kędzierzyn-Koźle',	'malesuada.venenatis@nuncsedlibero.org'),
('Brennan','Hicks',     '465563889', 'ul. Lniana 28 40-750 Katowice',	                        'tincidunt.Donec@vestibulummassarutrum.org'),
('Audrey','Fields',     '971534301', 'ul. Komisji Edukacji Narodowej 33 85-790 Bydgoszcz',	'neque.In@Maurisblandit.edu'),
('Gillian','Glass',     '423921732', 'Al. Na Skarpie 71 00-488 Warszawa',	                    'Proin@Phasellusvitaemauris.ca'),
('Nevada','Rutledge',   '388463226', 'ul. Pomorska 132 50-215 Wrocław',	                    'enim.Etiam@tellusimperdietnon.org'),
('Finn','Thornton',     '457619986', 'ul. Drobna 136 41-807 Zabrze',	                        'aliquet.sem.ut@lobortistellus.org'),
('Lesley','Harmon',     '953575729', 'ul. Stanisławowska 15 54-612 Wrocław',	                'dictum@libero.ca'),
('Lucy','Jenkins',      '579121004', 'ul. Jabłonowskich 50 31-114 Kraków',	                'quis.massa@eunulla.ca'),
('Dalton','Taylor',	    '445332118', 'ul. Grochowska 125 04-001 Warszawa',	                'lacinia.at@dignissimtempor.org'),
('Casey','Hanson',	    '465264436', 'ul. Akademicka 113 44-100 Gliwice',	                    'nisl.arcu.iaculis@mauriseuelit.ca'),
('Xena','Wiggins',	    '461952843', 'ul. Herbowa 111 43-600 Jaworzno',	                    'Pellentesque@sem.ca'),
('Chaney','Garza',	    '831192462', 'ul. Azaliowa 18 51-252 Wrocław',	                    'convallis.dolor@antedictummi.edu'),
('Kameko','Davenport',	'650612020', 'ul. Węglowa 134 40-106 Katowice',	                    'Sed@augueeutellus.org'),
('Dillon','Camacho',	'729742830', 'ul. Barwinek 36 25-150 Kielce',	                        'pretium@morbitristique.org'),
('Colby','Walter',	    '578247730', 'ul. Startowa 128 20-352 Lublin',	                    'Aenean@Quisqueporttitoreros.com'),
('Rebekah','Mooney',	'744474297', 'ul. Awionetki RWD 129 03-982 Warszawa',	                'fringilla@neceuismod.org'),
('Imani','Patton',	    '671248456', 'ul. Kościuszki Tadeusza 15 75-406 Koszalin',	        'at@dictum.org'),
('Renee','Beard',	    '420117435', 'ul. Saperska 135 61-494 Poznań',	                    'quam.quis.diam@nulla.edu')
;
--22

INSERT INTO przydzial(id_grupy,id_uczestnik) VALUES
(1,3),(1,4),(1,5),(1,8),(1,9),--
(2,1),(2,2),(2,5),(2,9),(2,11),(2,21),
(3,6),(3,14),(3,20),(3,21),(3,22),--
(4,1),(4,2),(4,11),(4,21),(4,22),--
(5,7),(5,10),(5,12),(5,13),--
(6,2),(6,7),(6,13),(6,18),(6,19),
(7,15),(7,16),(7,21)--
;
--33
INSERT INTO rozklad_godz(sala,godz_rozp,godz_zakon,dzien_tyg,grupa_id) VALUES
(2,'14:00','15:00','wtorek',1),
(1,'14:00','16:00','piątek',2),
(3,'16:00','17:00','wtorek',3),
(2,'15:00','17:00','wtorek',4),
(3,'12:00','13:00','środa',5),
(1,'14:00','15:00','wtorek',6),
(2,'13:00','15:00','piątek',6),
(3,'14:00','15:00','środa',7)
;
--8


