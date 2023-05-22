import 'dart:convert';

class ModelloDescrTerapia {
  String nome;
  String dosaggio;
  int vas;

  ModelloDescrTerapia({
    required this.nome,
    required this.dosaggio,
    required this.vas,
  });

  Map<String, dynamic> toJson() => {
        "nome": nome,
        "dosaggio": dosaggio,
        "vas": vas,
      };

  @override
  String toString() {
    JsonEncoder encoder = const JsonEncoder.withIndent('  ');
    return encoder.convert(toJson());
  }
}
