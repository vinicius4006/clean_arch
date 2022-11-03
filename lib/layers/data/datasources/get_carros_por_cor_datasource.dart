import 'package:clean_arc/layers/data/dto/carro_dto.dart';
import 'package:dartz/dartz.dart';

abstract class GetCarrosPorCorDataSource {
  Either<Exception, CarroDto> call(String cor);
}
