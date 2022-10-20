import 'package:clean_arc/layers/data/dto/carro_dto.dart';
import 'package:clean_arc/layers/domain/entities/carro_entity.dart';
import 'package:clean_arc/layers/domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    // chamamos a api e ela respondeu um json;
    Map<String, dynamic> dadosJson = {
      'placa': 'ABC123',
      'quantidade_de_portas': 4,
      'valor_final': 15200.00,
    };
    return CarroDto.fromJson(dadosJson);
  }
}
