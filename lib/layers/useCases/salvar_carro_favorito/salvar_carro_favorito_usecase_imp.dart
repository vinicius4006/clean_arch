import 'package:clean_arc/layers/domain/entities/carro_entity.dart';
import 'package:clean_arc/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:clean_arc/layers/useCases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';

class SalvarCarroFavoritosUseCaseImp implements SalvarCarroFavoritoUseCase {
  final SalvarCarroFavoritoRepository _salvarCarroFavoritoRepository;

  SalvarCarroFavoritosUseCaseImp(this._salvarCarroFavoritoRepository);

  @override
  Future<bool> call(CarroEntity carroEntity) async {
    late final bool result;
    try {
      carroEntity.setLogica();
      result = await _salvarCarroFavoritoRepository(carroEntity);
    } catch (error) {
      result = false;
    }

    return result;
  }
}
