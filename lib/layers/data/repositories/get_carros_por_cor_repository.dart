import 'package:clean_arc/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:clean_arc/layers/domain/entities/carro_entity.dart';
import 'package:clean_arc/layers/domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  final GetCarrosPorCorDataSource _getCarrosPorCorDataSource;
  GetCarrosPorCorRepositoryImp(this._getCarrosPorCorDataSource);
  @override
  CarroEntity call(String cor) {
    // chamamos a api e ela respondeu um json;

    return _getCarrosPorCorDataSource(cor);
  }
}
