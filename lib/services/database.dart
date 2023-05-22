import 'package:sqflite/sqflite.dart';

const COLONNA_PAZIENTE = "PAZIENTE";
const TABELLA_PAZIENTE = "TABELLA_PAZIENTE";
const COLONNA_NOME = "NOME";
const COLONNA_COGNOME = "COGNOME";
const COLONNA_CODICE = "CODICE";
const COLONNA_CODICEFISCALE = "CODICEFISCALE";
const COLONNA_CODICESANITARIO = "CODICESANITARIO";
const COLONNA_DATA = "DATA";
const COLONNA_CITTA = "CITTA";
const COLONNA_VIA = "VIA";
const COLONNA_NUMERO = "NUMERO";
const COLONNA_GENERE = "GENERE";
const TABELLA_OSPEDALI = "TABELLA_OSPEDALI";
const COLONNA_ID = "ID";
const COLONNA_NUMERODITELEFONO = "NUMERODITELEFONO";
const TABELLA_PATOLOGIE_CONTRATTE = "TABELLA_PATOLOGIE_CONTRATTE";
const COLONNA_DATA_RILEVAZIONE = "DATA_RILEVAZIONE";
const TABELLA_RICOVERI = "TABELLA_RICOVERI";
const TABELLA_SINTOMI = "TABELLA_SINTOMI";
const TABELLA_DESCRIZIONE_ESAMI = "TABELLA_DESCRIZIONE_ESAMI";
const TABELLA_DESCRIZIONE_TERAPIE = "TABELLA_DESCRIZIONE_TERAPIE";
const TABELLA_ESAMI = "TABELLA_ESAMI";
const TABELLA_TERAPIE = "TABELLA_TERAPIE";
const TABELLA_ESENZIONI = "TABELLA_ESENZIONI";
const TABELLA_ESENZIONI_PAZIENTI = "ESENZIONI_PAZIENTI";
const COLONNA_OSPEDALE = "OSPEDALE";
const COLONNA_DATA_RICOVERO = "DATA_RICOVERO";
const COLONNA_DATA_RILASCIO = "DATA_RILASCIO";
const COLONNA_DESCRIZIONE_SINTOMO = "DESCRIZIONE_SINTOMO";
const COLONNA_TIPO = "TIPO";
const COLONNA_COSTO = "COSTO";
const COLONNA_SPECIALISTA = "SPECIALISTA";
const COLONNA_DOSAGGIO = "DOSAGGIO";
const COLONNA_VOLTE_A_SETTIMANA = "VOLTE_A_SETTIMANA";
const COLONNA_ESAME = "ESAME";
const COLONNA_DATA_INIZIO = "DATA_INIZIO";
const COLONNA_DATA_FINE = "DATA_FINE";
const COLONNA_ORA = "ORA";
const COLONNA_PATOLOGIA = "PATOLOGIA";
const COLONNA_OPERATORE_SANITARIO = "OPERATORE_SANITARIO";
const COLONNA_TERAPIA = "TERAPIA";
const COLONNA_ESENZIONE = "ESENZIONE";
const COLONNA_CAREGIVER = "CAREGIVER";
const COLONNA_NOTE = "NOTE";

// Per info sulla libreria vedere https://pub.dev/packages/sqflite
class Persistence {
  late Database _database;

  void create() async {
    _database = await openDatabase('my_db.db');

    String createTableStatement =
        "CREATE TABLE $TABELLA_PAZIENTE ($COLONNA_NOME VARCHAR, $COLONNA_COGNOME VARCHAR, $COLONNA_CODICEFISCALE CHAR(16) PRIMARY KEY, $COLONNA_CODICESANITARIO CHAR(16), $COLONNA_DATA DATE, $COLONNA_CITTA VARCHAR, $COLONNA_VIA VARCHAR, $COLONNA_NUMERO CHAR(4), $COLONNA_GENERE VARCHAR(9))";
    String createTableStatement2 =
        "CREATE TABLE $TABELLA_OSPEDALI ($COLONNA_ID INTEGER  PRIMARY KEY AUTOINCREMENT, $COLONNA_NOME VARCHAR, $COLONNA_CITTA VARCHAR, $COLONNA_VIA VARCHAR, $COLONNA_NUMERO CHAR(4), $COLONNA_NUMERODITELEFONO VARCHAR)";
    String createTableStatement3 =
        "CREATE TABLE $TABELLA_PATOLOGIE_CONTRATTE ($COLONNA_ID INTEGER PRIMARY KEY AUTOINCREMENT, $COLONNA_NOME VARCHAR, $COLONNA_PAZIENTE CHAR(16), $COLONNA_DATA_RILEVAZIONE DATE, FOREIGN KEY ($COLONNA_PAZIENTE) REFERENCES $TABELLA_PAZIENTE ($COLONNA_CODICEFISCALE))";
    String createTableStatement4 =
        "CREATE TABLE $TABELLA_RICOVERI ($COLONNA_ID INTEGER PRIMARY KEY AUTOINCREMENT, $COLONNA_OSPEDALE INT, $COLONNA_PAZIENTE CHAR(16), $COLONNA_DATA_RICOVERO DATE, $COLONNA_DATA_RILASCIO DATE, FOREIGN KEY ($COLONNA_PAZIENTE) REFERENCES $TABELLA_PAZIENTE ($COLONNA_CODICEFISCALE), FOREIGN KEY ($COLONNA_OSPEDALE) REFERENCES $TABELLA_OSPEDALI ($COLONNA_ID))";
    String createTableStatement5 =
        "CREATE TABLE $TABELLA_SINTOMI ($COLONNA_ID INTEGER PRIMARY KEY AUTOINCREMENT, $COLONNA_DESCRIZIONE_SINTOMO VARCHAR, $COLONNA_DATA_RILEVAZIONE DATE, $COLONNA_PAZIENTE CHAR(16), FOREIGN KEY ($COLONNA_PAZIENTE) REFERENCES $TABELLA_PAZIENTE ($COLONNA_CODICEFISCALE))";
    String createTableStatement6 =
        "CREATE TABLE $TABELLA_DESCRIZIONE_ESAMI ($COLONNA_NOME VARCHAR PRIMARY KEY, $COLONNA_TIPO VARCHAR, $COLONNA_COSTO SMALLINT, $COLONNA_SPECIALISTA VARCHAR)";
    String createTableStatement7 =
        "CREATE TABLE $TABELLA_DESCRIZIONE_TERAPIE ($COLONNA_NOME VARCHAR PRIMARY KEY, $COLONNA_DOSAGGIO VARCHAR, $COLONNA_VOLTE_A_SETTIMANA TINYINT)";
    String createTableStatement8 =
        "CREATE TABLE $TABELLA_ESAMI ($COLONNA_ID INTEGER PRIMARY KEY AUTOINCREMENT, $COLONNA_ESAME VARCHAR, $COLONNA_DATA DATE, $COLONNA_ORA TIME, $COLONNA_PAZIENTE CHAR(16), $COLONNA_PATOLOGIA INT, $COLONNA_OPERATORE_SANITARIO VARCHAR, $COLONNA_OSPEDALE INT, FOREIGN KEY ($COLONNA_ESAME) REFERENCES $TABELLA_DESCRIZIONE_ESAMI ($COLONNA_NOME), FOREIGN KEY ($COLONNA_PAZIENTE) REFERENCES $TABELLA_PAZIENTE ($COLONNA_CODICEFISCALE), FOREIGN KEY ($COLONNA_PATOLOGIA) REFERENCES $TABELLA_PATOLOGIE_CONTRATTE ($COLONNA_ID), FOREIGN KEY ($COLONNA_OSPEDALE) REFERENCES $TABELLA_OSPEDALI ($COLONNA_ID))";
    String createTableStatement9 =
        "CREATE TABLE $TABELLA_TERAPIE ($COLONNA_ID INTEGER PRIMARY KEY AUTOINCREMENT, $COLONNA_TERAPIA VARCHAR, $COLONNA_PAZIENTE CHAR(16), $COLONNA_PATOLOGIA INT, $COLONNA_OPERATORE_SANITARIO VARCHAR, $COLONNA_CAREGIVER VARCHAR,  $COLONNA_DATA_INIZIO DATE, $COLONNA_DATA_FINE DATE, $COLONNA_NOTE VARCHAR, FOREIGN KEY ($COLONNA_TERAPIA) REFERENCES $TABELLA_DESCRIZIONE_TERAPIE ($COLONNA_NOME), FOREIGN KEY ($COLONNA_PAZIENTE) REFERENCES $TABELLA_PAZIENTE ($COLONNA_CODICEFISCALE), FOREIGN KEY ($COLONNA_PATOLOGIA) REFERENCES $TABELLA_PATOLOGIE_CONTRATTE ($COLONNA_ID))";
    String createTableStatement10 =
        "CREATE TABLE $TABELLA_ESENZIONI_PAZIENTI ($COLONNA_CODICE INTEGER PRIMARY KEY AUTOINCREMENT, $COLONNA_PAZIENTE CHAR(16), $COLONNA_ESENZIONE VARCHAR, FOREIGN  KEY ($COLONNA_PAZIENTE) REFERENCES $TABELLA_PAZIENTE ($COLONNA_CODICEFISCALE))";
    String createTableStatement11 =
        "CREATE TABLE $TABELLA_ESENZIONI ($COLONNA_ESENZIONE VARCHAR, $COLONNA_ESAME VARCHAR, PRIMARY KEY ($COLONNA_ESENZIONE, $COLONNA_ESAME), FOREIGN KEY ($COLONNA_ESAME) REFERENCES $TABELLA_DESCRIZIONE_ESAMI ($COLONNA_NOME))";

    await _database.execute(createTableStatement);
    await _database.execute(createTableStatement2);
    await _database.execute(createTableStatement3);
    await _database.execute(createTableStatement4);
    await _database.execute(createTableStatement5);
    await _database.execute(createTableStatement6);
    await _database.execute(createTableStatement7);
    await _database.execute(createTableStatement8);
    await _database.execute(createTableStatement9);
    await _database.execute(createTableStatement10);
    await _database.execute(createTableStatement11);
  }

  void close() async {
    await _database.close();
  }


  bool addOne(ModelloPaziente modelloPaziente) {
    SQLiteDatabase db = this.getWritableDatabase();
    ContentValues cv = new ContentValues();

    cv.put(COLONNA_NOME, modelloPaziente.getNome());
    cv.put(COLONNA_COGNOME, modelloPaziente.getCognome());
    cv.put(COLONNA_CODICEFISCALE, modelloPaziente.getCodiceFiscale());
    cv.put(COLONNA_CODICESANITARIO, modelloPaziente.getCodiceSanitario());
    cv.put(COLONNA_DATA, modelloPaziente.getDate().toString());
    cv.put(COLONNA_CITTA, modelloPaziente.getCittà());
    cv.put(COLONNA_VIA, modelloPaziente.getVia());
    cv.put(COLONNA_NUMERO, modelloPaziente.getNumero());
    cv.put(COLONNA_GENERE, modelloPaziente.getGenere());

    int insert = db.insert(TABELLA_PAZIENTE, null, cv);
    if (insert == -1)
    return false;
    else {

    return true;
    }


  }

  bool addOne(ModelloDescrTerapia modelloDescrTerapia) {
    SQLiteDatabase db = this.getWritableDatabase();
    ContentValues cv = new ContentValues();

    cv.put(COLONNA_NOME, modelloDescrTerapia.getNome());
    cv.put(COLONNA_DOSAGGIO, modelloDescrTerapia.getDosaggio());
    cv.put(COLONNA_VOLTE_A_SETTIMANA, ModelloDescrTerapia.getVas());

    final insert = db.insert(TABELLA_DESCRIZIONE_TERAPIE, null, cv);
    return insert == -1;
  }

  bool addOne(ModelloOspedale modelloOspedale) {
    SQLiteDatabase db = this.getWritableDatabase();
    ContentValues cv = new ContentValues();

    cv.put(COLONNA_NOME, ModelloOspedale.getNome());
    cv.put(COLONNA_CITTA, ModelloOspedale.getCittà());
    cv.put(COLONNA_VIA, ModelloOspedale.getVia());
    cv.put(COLONNA_NUMERO, ModelloOspedale.getNumero());
    cv.put(COLONNA_NUMERODITELEFONO, ModelloOspedale.getNt());

    final insert = db.insert(TABELLA_OSPEDALI, null, cv);
    if (insert == -1)
    return false;
    else {

    return true;
    }

  }

  bool addOne(ModelloPatologia modelloPatologia) {
    SQLiteDatabase db = this.getWritableDatabase();
    ContentValues cv = new ContentValues();

    cv.put(COLONNA_NOME, ModelloPatologia.getPatologia());
    cv.put(COLONNA_PAZIENTE, ModelloPatologia.getCodicesanitario());
    cv.put(COLONNA_DATA_RILEVAZIONE,
        ModelloPatologia.getDatarilevazione().toString());

    final insert = db.insert(TABELLA_OSPEDALI, null, cv);
    return insert == -1;
  }

  bool addOne(ModelloRicovero modelloRicovero) {
    SQLiteDatabase db = this.getWritableDatabase();
    ContentValues cv = new ContentValues();

    cv.put(COLONNA_OSPEDALE, ModelloRicovero.getIdOspedale());
    cv.put(COLONNA_PAZIENTE, ModelloRicovero.getCodicesanitariopaziente());
    cv.put(COLONNA_DATA_RICOVERO, ModelloRicovero.getDataricovero().toString());
    cv.put(COLONNA_DATA_RILASCIO, ModelloRicovero.getDatarilascio().toString());

    final insert = db.insert(TABELLA_RICOVERI, null, cv);
    return insert == -1;
  }

  bool addOne(ModelloSintomo modelloSintomo) {
    SQLiteDatabase db = this.getWritableDatabase();
    ContentValues cv = new ContentValues();

    cv.put(COLONNA_DESCRIZIONE_SINTOMO, ModelloSintomo.getDescrizionesintomo());
    cv.put(COLONNA_PAZIENTE, ModelloSintomo.getCodicesanitariopaziente());
    cv.put(COLONNA_DATA_RILEVAZIONE,
        ModelloSintomo.getDatarilevazione().toString());

    final insert = db.insert(TABELLA_SINTOMI, null, cv);
    return insert == -1;
  }

  bool addOne(ModelloDescrEsame modelloDescrEsame) {
    SQLiteDatabase db = this.getWritableDatabase();
    ContentValues cv = new ContentValues();

    cv.put(COLONNA_NOME, ModelloDescrEsame.getNome());
    cv.put(COLONNA_TIPO, ModelloDescrEsame.getTipo());
    cv.put(COLONNA_COSTO, ModelloDescrEsame.getCosto());
    cv.put(COLONNA_SPECIALISTA, ModelloDescrEsame.getSpecialista());

    final insert = db.insert(TABELLA_SINTOMI, null, cv);
    return insert == -1;
  }

  bool addOne(ModelloEsame modelloEsame) {
    SQLiteDatabase db = this.getWritableDatabase();
    ContentValues cv = new ContentValues();

    cv.put(COLONNA_ESAME, ModelloEsame.getNomeesame());
    cv.put(COLONNA_DATA, ModelloEsame.getData().toString());
    cv.put(COLONNA_ORA, ModelloEsame.getOra().toString());
    cv.put(COLONNA_PAZIENTE, ModelloEsame.getCodicesanitariopaziente());
    cv.put(COLONNA_PATOLOGIA, ModelloEsame.getIdpatologia());
    cv.put(
        COLONNA_OPERATORE_SANITARIO, ModelloEsame.getCodicesanitariopaziente());
    cv.put(COLONNA_OSPEDALE, ModelloEsame.getIdospedale());

    final insert = db.insert(TABELLA_SINTOMI, null, cv);
    return insert == -1;
  }

  bool addOne(ModelloTerapia modelloTerapia) {
    SQLiteDatabase db = this.getWritableDatabase();
    ContentValues cv = new ContentValues();

    cv.put(COLONNA_TERAPIA, ModelloTerapia.getNometerapia());
    cv.put(COLONNA_PAZIENTE, ModelloTerapia.getCodicesanitariopaziente());
    cv.put(COLONNA_PATOLOGIA, ModelloTerapia.getIdcontrazione());
    cv.put(COLONNA_OPERATORE_SANITARIO, ModelloTerapia.getOperatoresanitario());
    cv.put(COLONNA_CAREGIVER, ModelloTerapia.getCaregiver());
    cv.put(COLONNA_DATA_INIZIO, ModelloTerapia.getDatainizio().toString());
    cv.put(COLONNA_DATA_FINE, ModelloTerapia.getDatafine().toString());
    cv.put(COLONNA_NOTE, ModelloTerapia.getNote());

    final insert = db.insert(TABELLA_SINTOMI, null, cv);
    return insert == -1;
  }

  bool addOne(ModelloEsenzionePaziente modelloEsenzionePaziente) {
    SQLiteDatabase db = this.getWritableDatabase();
    ContentValues cv = new ContentValues();

    cv.put(COLONNA_PAZIENTE,
        ModelloEsenzionePaziente.getCodicesanitariopaziente());
    cv.put(COLONNA_ESENZIONE, ModelloEsenzionePaziente.getEsenzione());

    final insert = db.insert(TABELLA_SINTOMI, null, cv);
    return insert == -1;
  }

  bool addOne(ModelloEsenzione modelloEsenzione) {
    SQLiteDatabase db = this.getWritableDatabase();
    ContentValues cv = new ContentValues();

    cv.put(COLONNA_ESENZIONE, ModelloEsenzione.getEsenzione());
    cv.put(COLONNA_ESAME, ModelloEsenzione.getNomeesame());

    final insert = db.insert(TABELLA_SINTOMI, null, cv);
    return insert == -1;
  }
}
