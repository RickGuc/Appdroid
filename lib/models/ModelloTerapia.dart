class ModelloTerapia {

  int id;

  String nometerapia;

  String codicesanitariopaziente;

  int idcontrazione;

  String operatoresanitario;

  String caregiver;

  LocalDate datainizio;

  LocalDate datafine;

  String note;

  ModelloTerapia(int Id, String Nometerapia, String Codicesanitariopaziente,
      int IdContrazione, String Operatoresanitario, String Caregiver,
      LocalDate Datainizio, LocalDate Datafine, String Note) {
    id = Id;
    nometerapia = Nometerapia;
    codicesanitariopaziente = Codicesanitariopaziente;
    idcontrazione = IdContrazione;
    operatoresanitario = Operatoresanitario;
    caregiver = Caregiver;
    datainizio = Datainizio;
    datafine = Datafine;
    note = Note;
  }

  @Override
  String toString() {
    return "ModelloTerapia{" +
        "id=" + id +
        ", nometerapia='" + nometerapia + '\'' +
        ", codicesanitariopaziente='" + codicesanitariopaziente + '\'' +
        ", idcontrazione=" + idcontrazione +
        ", operatoresanitario='" + operatoresanitario + '\'' +
        ", caregiver='" + caregiver + '\'' +
        ", datainizio=" + datainizio +
        ", datafine=" + datafine +
        ", note='" + note + '\'' +
        '}';
  }

  int getId() {
    return id;
  }

  public

  void setId(int id) {
    this.id = id;
  }

  public String

  getNometerapia() {
    return nometerapia;
  }

  public

  void setNometerapia(String nometerapia) {
    this.nometerapia = nometerapia;
  }

  public String

  getCodicesanitariopaziente() {
    return codicesanitariopaziente;
  }

  public

  void setCodicesanitariopaziente(String codicesanitariopaziente) {
    this.codicesanitariopaziente = codicesanitariopaziente;
  }

  public int

  getIdcontrazione() {
    return idcontrazione;
  }

  public

  void setIdcontrazione(int idcontrazione) {
    this.idcontrazione = idcontrazione;
  }

  public String

  getOperatoresanitario() {
    return operatoresanitario;
  }

  public

  void setOperatoresanitario(String operatoresanitario) {
    this.operatoresanitario = operatoresanitario;
  }

  public String

  getCaregiver() {
    return caregiver;
  }

  public

  void setCaregiver(String caregiver) {
    this.caregiver = caregiver;
  }

  public LocalDate

  getDatainizio() {
    return datainizio;
  }

  public

  void setDatainizio(LocalDate datainizio) {
    this.datainizio = datainizio;
  }

  public LocalDate

  getDatafine() {
    return datafine;
  }

  public

  void setDatafine(LocalDate datafine) {
    this.datafine = datafine;
  }

  public String

  getNote() {
    return note;
  }

  public

  void setNote(String note) {
    this.note = note;
  }
}
