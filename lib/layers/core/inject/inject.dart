import 'package:clean_arc/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:clean_arc/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:clean_arc/layers/data/repositories/get_carros_por_cor_repository.dart';
import 'package:clean_arc/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:clean_arc/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:clean_arc/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:clean_arc/layers/presentation/controllers/carro_controller.dart';
import 'package:clean_arc/layers/useCases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:clean_arc/layers/useCases/get_carros_por_cor/get_carros_por_usecase.dart';
import 'package:clean_arc/layers/useCases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:clean_arc/layers/useCases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    // datasources
    getIt.registerLazySingleton<GetCarrosPorCorDataSource>(
        () => GetCarrosPorCorLocalDataSourceImp());
    // repositories
    getIt.registerLazySingleton<GetCarrosPorCorRepository>(
        () => GetCarrosPorCorRepositoryImp(getIt()));
    getIt.registerLazySingleton<SalvarCarroFavoritoRepository>(
        () => SalvarCarroFavoritoRepositoryImp());
    // usecases
    getIt.registerLazySingleton<GetCarrosPorCorUseCase>(
        () => GetCarrosPorCorUseCaseImp(getIt()));
    getIt.registerLazySingleton<SalvarCarroFavoritoUseCase>(
        () => SalvarCarroFavoritosUseCaseImp(getIt()));
    // controllers
    getIt.registerFactory<CarroController>(
        () => CarroController(getIt(), getIt()));
  }
}


  // CarroController controller = CarroController(
  //     GetCarrosPorCorUseCaseImp(
  //         GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp())),
  //     SalvarCarroFavoritosUseCaseImp(SalvarCarroFavoritoRepositoryImp()));
