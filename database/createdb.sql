CREATE DATABASE felicieventi;

DROP TABLE Evento;
DROP TABLE Luogo;

CREATE TABLE IF NOT EXISTS Evento(

  IdEvento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(200) NOT NULL,
  DataInizio DATETIME DEFAULT now(),
  DataFine DATETIME NOT NULL,
  Stato ENUM('Aperto','Chiuso'),
  FKLuogo INT NOT NULL,

  FOREIGN KEY (FKLuogo)
  REFERENCES Luogo(IdLuogo)
    ON UPDATE CASCADE
    ON DELETE CASCADE

)Engine=InnoDB;

CREATE TABLE IF NOT EXISTS Luogo(

  IdLuogo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Indirizzo VARCHAR(255) NOT NULL,
  Valutazione DOUBLE,
  OrarioApertura VARCHAR(50) NOT NULL,
  Latitudine DOUBLE NOT NULL,
  Longitudine DOUBLE NOT NULL
)Engine=InnoDB;