import 'package:clean_arc/layers/domain/entities/carro_entity.dart';
import 'package:clean_arc/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:clean_arc/layers/useCases/get_carros_por_cor/get_carros_por_usecase.dart';

class GetCarrosPorCorUseCaseImp implements GetCarrosPorCorUseCase {
  final GetCarrosPorCorRepository _getCarrosPorCorRepository;
  GetCarrosPorCorUseCaseImp(this._getCarrosPorCorRepository);
  @override
  CarroEntity call(String cor) {
    return _getCarrosPorCorRepository(cor);
  }
}
