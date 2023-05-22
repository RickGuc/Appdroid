class ModelloEsenzione {
  String esenzione;

  String nomeesame;

  ModelloEsenzione(String Esenzione, String NomeEsame) {
    esenzione = Esenzione;
    nomeesame = NomeEsame;
  }

  ModelloEsenzione() {}

  @Override
  String toString() {
    return "ModelloEsenzione{" +
        "esenzione='" +
        esenzione +
        '\'' +
        ", nomeesame='" +
        nomeesame +
        '\'' +
        '}';
  }

  String getEsenzione() {
    return esenzione;
  }

  void setEsenzione(String esenzione) {
    this.esenzione = esenzione;
  }

  String getNomeesame() {
    return nomeesame;
  }

  void setNomeesame(String nomeesame) {
    this.nomeesame = nomeesame;
  }
}
