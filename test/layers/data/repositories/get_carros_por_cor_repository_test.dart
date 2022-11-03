import 'package:clean_arc/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:clean_arc/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:clean_arc/layers/data/repositories/get_carros_por_cor_repository.dart';
import 'package:clean_arc/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  GetCarrosPorCorDataSource dataSource = GetCarrosPorCorLocalDataSourceImp();
  GetCarrosPorCorRepository repository =
      GetCarrosPorCorRepositoryImp(dataSource);

  test('Devolva um carro independente da cor', () {
    var result = repository('qualquer');

    expect(result, isNotNull);
  });
}
