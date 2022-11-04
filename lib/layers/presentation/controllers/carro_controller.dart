import 'package:clean_arc/layers/domain/entities/carro_entity.dart';
import 'package:clean_arc/layers/domain/useCases/get_carros_por_cor/get_carros_por_usecase.dart';
import 'package:clean_arc/layers/domain/useCases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:flutter/material.dart';

class CarroController {
  final GetCarrosPorCorUseCase _getCarrosPorCorUseCase;
  final SalvarCarroFavoritoUseCase _salvarCarroFavoritoUseCase;
  CarroController(
    this._getCarrosPorCorUseCase,
    this._salvarCarroFavoritoUseCase,
  ) {
    getCarrosPorCor('vermelho');
  }

  late CarroEntity _carro;
  CarroEntity get carro => _carro;

  getCarrosPorCor(String cor) {
    var result = _getCarrosPorCorUseCase(cor);
    result.fold(
        (error) => debugPrint(error.toString()), (sucess) => _carro = sucess);
  }

  salvarCarroFavorito(CarroEntity carro) async {
    var result = await _salvarCarroFavoritoUseCase(carro);
  }
}
