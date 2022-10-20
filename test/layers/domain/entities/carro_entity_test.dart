import 'package:clean_arc/layers/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Espero que a entidade não seja nula', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 2, valor: 1000);
    expect(carroEntity, isNotNull);
  });

  test('Espero que a qtd de portas seja 2', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 2, valor: 1000);
    var resultado = 2000;
    expect(carroEntity.valorReal, resultado);
  });

  test('Espero que o valor seja 30000.00', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 2, valor: 15000.00);
    var resultadoEsperado = 30000;

    carroEntity.setLogica();
    expect(carroEntity.valor, resultadoEsperado);
  });
}
