import 'package:clean_arc/layers/domain/entities/carro_entity.dart';
import 'package:clean_arc/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:clean_arc/layers/domain/useCases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:dartz/dartz.dart';

class SalvarCarroFavoritosUseCaseImp implements SalvarCarroFavoritoUseCase {
  final SalvarCarroFavoritoRepository _salvarCarroFavoritoRepository;

  SalvarCarroFavoritosUseCaseImp(this._salvarCarroFavoritoRepository);

  @override
  Future<Either<Exception, bool>> call(CarroEntity carroEntity) async {
    carroEntity.setLogica();
    var res = await _salvarCarroFavoritoRepository(carroEntity);

    return res;
  }
}
