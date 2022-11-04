import 'package:clean_arc/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:clean_arc/layers/domain/entities/carro_entity.dart';
import 'package:clean_arc/layers/domain/useCases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:clean_arc/layers/domain/useCases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Espero que salve o carro com sucesso', () async {
    SalvarCarroFavoritoUseCase useCase =
        SalvarCarroFavoritosUseCaseImp(SalvarCarroFavoritoRepositoryImp());

    var carro = CarroEntity(placa: 'placa', qtdPortas: 2, valor: 1);
    var result = await useCase(carro);

    late bool exp;
    result.fold((l) => null, (r) => exp = r);

    expect(exp, true);
  }, tags: 'salvarCarro');
  test(
      'Espero que não salve o carro quando o valor for menor ou igual que zero',
      () async {
    SalvarCarroFavoritoUseCase useCase =
        SalvarCarroFavoritosUseCaseImp(SalvarCarroFavoritoRepositoryImp());

    var carro = CarroEntity(placa: 'placa', qtdPortas: 2, valor: 0);
    var result = await useCase(carro);

    late bool exp;
    result.fold((l) => null, (r) => exp = r);

    expect(exp, false);
  }, tags: 'salvarCarro');
}
