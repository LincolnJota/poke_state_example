import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:exemplo_state/app/modules/novo/consts.dart';
import 'package:exemplo_state/app/modules/novo/infra/datasources/pokemon_datasource.dart';
import 'package:exemplo_state/app/modules/novo/infra/models/pokemon_model.dart';

class PokemonDatasourceImpl implements PokemonDatasource {
  final Dio dio;

  PokemonDatasourceImpl(this.dio);

  @override
  Future<PokemonModel> getPokemon(String nome) async {
    Response<String> response = await dio.get('${AppConsts.POKEMON_API}$nome');

    Map<String, dynamic> result = jsonDecode(response.data!);

    return PokemonModel.fromJson(result);
  }
}
