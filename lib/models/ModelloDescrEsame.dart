import 'dart:convert';

class ModelloDescrEsame {
  String nome;
  String tipo;
  int costo;
  String specialista;

  ModelloDescrEsame({
    required this.nome,
    required this.tipo,
    required this.costo,
    required this.specialista,
  });

  Map<String, dynamic> toJson() => {
        "nome": nome,
        "tipo": tipo,
        "costo": costo,
        "specialista": specialista,
      };

  @override
  String toString() {
    JsonEncoder encoder = const JsonEncoder.withIndent('  ');
    return encoder.convert(toJson());
  }
}
