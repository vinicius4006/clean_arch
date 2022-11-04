import 'package:clean_arc/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:clean_arc/layers/data/repositories/get_carros_por_cor_repository.dart';
import 'package:clean_arc/layers/domain/entities/carro_entity.dart';
import 'package:clean_arc/layers/domain/useCases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:clean_arc/layers/domain/useCases/get_carros_por_cor/get_carros_por_usecase.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Deve retornar uma instancia de carro quando passado qualquer cor', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
        GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp()));

    var result = useCase('azul');

    late CarroEntity exp;

    result.fold((l) => null, (r) => exp = r);

    expect(exp, isInstanceOf<CarroEntity>());
  }, tags: 'get_carros_por_cor');
  test('Deve retornar um carro de quatro portas quando vermelho', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
        GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp()));

    var result = useCase('vermelho');
    late CarroEntity exp;

    result.fold((l) => null, (r) => exp = r);

    expect(exp.qtdPortas, 4);
  }, tags: 'get_carros_por_cor');
  test(
      'Deve retornar um carro de duas portas quando qualquer cor exceto vermelho',
      () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
        GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp()));

    var result = useCase('azul');

    late CarroEntity exp;

    result.fold((l) => null, (r) => exp = r);

    expect(exp.qtdPortas, 2);
  }, tags: 'get_carros_por_cor');
}
