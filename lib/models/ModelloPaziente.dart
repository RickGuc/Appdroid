class ModelloPaziente {
  String Nome;
  String Cognome;
  LocalDate date;
  String CodiceSanitario;
  String CodiceFiscale;
  String Citta;

  String Via;
  String Numero;

  String Genere;

  ModelloPaziente

  (

  String nome, String cognome, LocalDate date, String codiceSanitario, String codiceFiscale, String città, String via, String numero, String genere) {
  Nome = nome;
  Cognome = cognome;
  this.date = date;
  CodiceSanitario = codiceSanitario;
  CodiceFiscale = codiceFiscale;
  Città = città;
  Via = via;
  Numero = numero;
  Genere = genere;
  }

  ModelloPaziente() {
  }

  @Override
  String toString() {
  return "ModelloPaziente{" +
  "Nome='" + Nome + '\'' +
  ", Cognome='" + Cognome + '\'' +
  ", date=" + date +
  ", CodiceSanitario='" + CodiceSanitario + '\'' +
  ", CodiceFiscale='" + CodiceFiscale + '\'' +
  ", Città='" + Città + '\'' +
  ", Via='" + Via + '\'' +
  ", Numero='" + Numero + '\'' +
  '}';
  }


}

