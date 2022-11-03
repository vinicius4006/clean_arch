import 'package:clean_arc/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:clean_arc/layers/data/repositories/get_carros_por_cor_repository.dart';
import 'package:clean_arc/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:clean_arc/layers/presentation/controllers/carro_controller.dart';
import 'package:clean_arc/layers/useCases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:clean_arc/layers/useCases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:flutter/material.dart';

class CarroPage extends StatelessWidget {
  CarroPage({super.key});

  CarroController controller = CarroController(
      GetCarrosPorCorUseCaseImp(
          GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp())),
      SalvarCarroFavoritosUseCaseImp(SalvarCarroFavoritoRepositoryImp()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Text(controller.carro.placa),
      ),
    );
  }
}
