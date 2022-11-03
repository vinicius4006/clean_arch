import 'package:clean_arc/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:clean_arc/layers/domain/entities/carro_entity.dart';
import 'package:clean_arc/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:dartz/dartz.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  final GetCarrosPorCorDataSource _getCarrosPorCorDataSource;
  GetCarrosPorCorRepositoryImp(this._getCarrosPorCorDataSource);
  @override
  Either<Exception, CarroEntity> call(String cor) {
    // chamamos a api e ela respondeu um json;

    return _getCarrosPorCorDataSource(cor);
  }
}
