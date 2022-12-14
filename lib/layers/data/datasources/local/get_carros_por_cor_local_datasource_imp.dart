import 'package:clean_arc/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:clean_arc/layers/data/dto/carro_dto.dart';

class GetCarrosPorCorLocalDataSourceImp implements GetCarrosPorCorDataSource {
  final Map<String, dynamic> dadosJsonVermelho = {
    'placa': 'ABC123',
    'quantidade_de_portas': 4,
    'valor_final': 5000.00,
  };
  final Map<String, dynamic> dadosJsonAny = {
    'placa': 'QWE',
    'quantidade_de_portas': 2,
    'valor_final': 2000.00,
  };
  @override
  CarroDto call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroDto.fromJson(dadosJsonVermelho);
    }
    return CarroDto.fromJson(dadosJsonAny);
  }
}
