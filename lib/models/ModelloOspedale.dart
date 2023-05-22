class ModelloOspedale {

  int id;

  String nome;

  String citt

  à;

  String via;

  String numero;

  String nt;

  ModelloOspedale

  (

  int Id, String Nome, String Città, String Via, String Numero, String Nt){
  id = Id;
  nome = Nome;
  città = Città;
  via = Via;
  numero = Numero;
  nt = Nt;
  }

  ModelloOspedale() {

  }

  @Override
  String toString() {
  return "ModelloOspedale{" +
  // "id=" + id +//
  ", nome='" + nome + '\'' +
  ", città='" + città + '\'' +
  ", via='" + via + '\'' +
  ", numero='" + numero + '\'' +
  ", nt=" + nt +
  '}';
  }

  int getId() {
  return id;
  }

  void setId(int id) {
  this.id = id;
  }

  String getNome() {
  return nome;
  }

  void setNome(String nome) {
  this.nome = nome;
  }

  String getCittà() {
  return città;
  }

  void setCittà(String città) {
  this.città = città;
  }

  String getVia() {
  return via;
  }

  void setVia(String via) {
  this.via = via;
  }

  String getNumero() {
  return numero;
  }

  public void setNumero(String numero) {
  this.numero = numero;
  }

  public String getNt() {
  return nt;
  }

  public void String (String nt) {
  this.nt = nt;
  }
}
