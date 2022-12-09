import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:exemplo_state/app/modules/novo/domain/entities/pokemon_entity.dart';
import 'package:exemplo_state/app/modules/novo/domain/errors/errors.dart';
import 'package:exemplo_state/app/modules/novo/domain/repositories/pokemon_repository.dart';
import 'package:exemplo_state/app/modules/novo/infra/datasources/pokemon_datasource.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonDatasource _datasource;

  PokemonRepositoryImpl(this._datasource);

  @override
  Future<Either<PokemonException, PokemonEntity>> getPokemon(
      String nome) async {
    try {
      var result = await _datasource.getPokemon(nome);
      return right(result);
    } on PokemonException catch (e) {
      return left(e);
    } on DioError catch (err) {
      if (err.response?.statusCode == 404) {
        return Left(PokemonException('Pokemon não encontrado.'));
      }

      return left(PokemonException(err.message));
    } catch (e) {
      log('$e');
      return left(PokemonException('Erro desconhecido.'));
    }
  }
}
