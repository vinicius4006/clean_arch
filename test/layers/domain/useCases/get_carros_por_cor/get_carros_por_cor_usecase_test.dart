import 'package:clean_arc/layers/domain/entities/carro_entity.dart';
import 'package:clean_arc/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:clean_arc/layers/useCases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:clean_arc/layers/useCases/get_carros_por_cor/get_carros_por_usecase.dart';
import 'package:flutter_test/flutter_test.dart';

class GetCarrosPorRepositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroEntity(placa: 'ABC123', qtdPortas: 4, valor: 5000.00);
    }
    return CarroEntity(placa: 'QWE', qtdPortas: 2, valor: 2000.00);
  }
}

main() {
  test('Deve retornar uma instancia de carro quando passado qualquer cor', () {
    GetCarrosPorCorUseCase useCase =
        GetCarrosPorCorUseCaseImp(GetCarrosPorRepositoryImp());

    var result = useCase('azul');

    expect(result, isInstanceOf<CarroEntity>());
  }, tags: 'get_carros_por_cor');
  test('Deve retornar um carro de quatro portas quando vermelho', () {
    GetCarrosPorCorUseCase useCase =
        GetCarrosPorCorUseCaseImp(GetCarrosPorRepositoryImp());

    var result = useCase('vermelho');

    expect(result.qtdPortas, 4);
  }, tags: 'get_carros_por_cor');
  test(
      'Deve retornar um carro de duas portas quando qualquer cor exceto vermelho',
      () {
    GetCarrosPorCorUseCase useCase =
        GetCarrosPorCorUseCaseImp(GetCarrosPorRepositoryImp());

    var result = useCase('azul');

    expect(result.qtdPortas, 2);
  }, tags: 'get_carros_por_cor');
}
