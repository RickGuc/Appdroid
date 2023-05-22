class ModelloSintomo {

  int id;

  String descrizionesintomo;

  String codicesanitariopaziente;

  LocalDate datarilevazione;

  ModelloSintomo(int Id, String Descrizionesintomo,
      String Codicesanitariopaziente, LocalDate Datarilevazione) {
    id = Id;
    descrizionesintomo = Descrizionesintomo;
    codicesanitariopaziente = Codicesanitariopaziente;
    datarilevazione = Datarilevazione;
  }

  @Override
  String toString() {
    return "ModelloSintomo{" +
        "id=" + id +
        ", descrizionesintomo='" + descrizionesintomo + '\'' +
        ", codicesanitariopaziente='" + codicesanitariopaziente + '\'' +
        ", datarilevazione=" + datarilevazione +
        '}';
  }

  int getId() {
    return id;
  }

  void setId(int id) {
    this.id = id;
  }

  String getDescrizionesintomo() {
    return descrizionesintomo;
  }

  void setDescrizionesintomo(String descrizionesintomo) {
    this.descrizionesintomo = descrizionesintomo;
  }

  String getCodicesanitariopaziente() {
    return codicesanitariopaziente;
  }

  void setCodicesanitariopaziente(String codicesanitariopaziente) {
    this.codicesanitariopaziente = codicesanitariopaziente;
  }

  LocalDate getDatarilevazione() {
    return datarilevazione;
  }

  public

  void setDatarilevazione(LocalDate datarilevazione) {
    this.datarilevazione = datarilevazione;
  }
}
