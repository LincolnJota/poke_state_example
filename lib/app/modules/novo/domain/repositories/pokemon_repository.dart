import 'package:dartz/dartz.dart';

import '../entities/pokemon_entity.dart';
import '../errors/errors.dart';

abstract class PokemonRepository {
  Future<Either<PokemonException, PokemonEntity>> getPokemon(String nome);
}
