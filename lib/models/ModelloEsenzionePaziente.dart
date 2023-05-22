class ModelloEsenzionePaziente {
  int codice;

  String codicesanitariopaziente;

  String esenzione;

  ModelloEsenzionePaziente(
      int Codice, String Codicesanitariopaziente, String Esenzione) {
    codice = Codice;
    codicesanitariopaziente = Codicesanitariopaziente;
    esenzione = Esenzione;
  }

  @Override
  String toString() {
    return "ModelloEsenzionePaziente{" +
        "codice=" +
        codice +
        ", codicesanitariopaziente='" +
        codicesanitariopaziente +
        '\'' +
        ", esenzione='" +
        esenzione +
        '\'' +
        '}';
  }

  int getCodice() {
    return codice;
  }

  void setCodice(int codice) {
    this.codice = codice;
  }

  String getCodicesanitariopaziente() {
    return codicesanitariopaziente;
  }

  void setCodicesanitariopaziente(String codicesanitariopaziente) {
    this.codicesanitariopaziente = codicesanitariopaziente;
  }

  String getEsenzione() {
    return esenzione;
  }

  void setEsenzione(String esenzione) {
    this.esenzione = esenzione;
  }
}
