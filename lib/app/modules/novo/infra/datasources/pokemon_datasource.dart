import 'package:exemplo_state/app/modules/novo/infra/models/pokemon_model.dart';

abstract class PokemonDatasource {
  Future<PokemonModel> getPokemon(String nome);
}
