class ModelloPatologia {

  int id;

  String patologia;

  String codicesanitario;

  LocalDate datarilevazione;


  ModelloPatologia(int Id, String Patologia, String Codicesanitario,
      LocalDate Datarilevazione) {
    id = Id;
    patologia = Patologia;
    codicesanitario = Codicesanitario;
    datarilevazione = Datarilevazione;
  }

  ModelloPatologia() {

  }

  @Override
  public String

  toString() {
    return "ModelloPatologie{" +
        "id=" + id +
        ", patologia='" + patologia + '\'' +
        ", codicesanitario='" + codicesanitario + '\'' +
        ", datarilevazione=" + datarilevazione +
        '}';
  }

  public int

  getId() {
    return id;
  }

  public

  void setId(int id) {
    this.id = id;
  }

  public String

  getPatologia() {
    return patologia;
  }

  public

  void setPatologia(String patologia) {
    this.patologia = patologia;
  }

  public String

  getCodicesanitario() {
    return codicesanitario;
  }

  public

  void setCodicesanitario(String codicesanitario) {
    this.codicesanitario = codicesanitario;
  }

  public LocalDate

  getDatarilevazione() {
    return datarilevazione;
  }

  public

  void setDatarilevazione(LocalDate datarilevazione) {
    this.datarilevazione = datarilevazione;
  }
}
