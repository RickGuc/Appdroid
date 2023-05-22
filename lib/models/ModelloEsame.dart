import
java.time.LocalTime;

class ModelloEsame {

  int id;

  String nomeesame;

  LocalDate data;

  LocalTime ora;

  String codicesanitariopaziente;

  int idpatologia;

  String operatoresanitario;

  int idospedale;

  ModelloEsame(int Id, String NomeEsame, LocalDate Data, LocalTime Ora,
      String Codicesanitariopaziente, int Idpatologia,
      String Operatoresanitario, int Idospedale) {
    id = Id;
    nomeesame = NomeEsame;
    data = Data;
    ora = Ora;
    codicesanitariopaziente = Codicesanitariopaziente;
    idpatologia = Idpatologia;
    operatoresanitario = Operatoresanitario;
    idospedale = Idospedale;
  }

  ModelloEsame() {

  }

  @Override
  String toString() {
    return "ModelloEsame{" +
        "id=" + id +
        ", nomeesame='" + nomeesame + '\'' +
        ", data=" + data +
        ", ora=" + ora +
        ", codicesanitariopaziente='" + codicesanitariopaziente + '\'' +
        ", idpatologia=" + idpatologia +
        ", operatoresanitario='" + operatoresanitario + '\'' +
        ", idospedale=" + idospedale +
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

  getNomeesame() {
    return nomeesame;
  }

  public

  void setNomeesame(String nomeesame) {
    this.nomeesame = nomeesame;
  }

  public LocalDate

  getData() {
    return data;
  }

  public

  void setData(LocalDate data) {
    this.data = data;
  }

  public LocalTime

  getOra() {
    return ora;
  }

  public

  void setOra(LocalTime ora) {
    this.ora = ora;
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

  getIdpatologia() {
    return idpatologia;
  }

  public

  void setIdpatologia(int idpatologia) {
    this.idpatologia = idpatologia;
  }

  public String

  getOperatoresanitario() {
    return operatoresanitario;
  }

  public

  void setOperatoresanitario(String operatoresanitario) {
    this.operatoresanitario = operatoresanitario;
  }

  public int

  getIdospedale() {
    return idospedale;
  }

  public

  void setIdospedale(int idospedale) {
    this.idospedale = idospedale;
  }
}
