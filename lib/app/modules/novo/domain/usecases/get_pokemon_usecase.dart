import 'package:dartz/dartz.dart';
import 'package:exemplo_state/app/modules/novo/domain/errors/errors.dart';
import 'package:exemplo_state/app/modules/novo/domain/repositories/pokemon_repository.dart';

import '../entities/pokemon_entity.dart';

abstract class GetPokemonUsecase {
  Future<Either<PokemonException, PokemonEntity>> getPokemon(String nome);
}

class GetPokemonUsecaseImpl implements GetPokemonUsecase {
  final PokemonRepository _repository;

  GetPokemonUsecaseImpl(this._repository);

  @override
  Future<Either<PokemonException, PokemonEntity>> getPokemon(
      String nome) async {
    return await _repository.getPokemon(nome);
  }
}
