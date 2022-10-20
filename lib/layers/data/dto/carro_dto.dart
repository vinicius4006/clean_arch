import 'dart:convert';

import 'package:clean_arc/layers/domain/entities/carro_entity.dart';

class CarroDto extends CarroEntity {
  CarroDto({
    required super.placa,
    required super.qtdPortas,
    required super.valor,
  });

  static CarroDto fromJson(Map<String, dynamic> dados) {
    return CarroDto(
        placa: dados['placa'],
        qtdPortas: dados['quantidade_de_portas'],
        valor: dados['valor_final']);
  }

  String toJson() {
    Map<String, dynamic> json = {};
    json['placa'] = super.placa;
    json['quantidade_de_portas'] = super.qtdPortas;
    json['valor_final'] = super.valor;

    return jsonEncode(json);
  }
}
