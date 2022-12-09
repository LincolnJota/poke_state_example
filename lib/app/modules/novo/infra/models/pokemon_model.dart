import 'package:exemplo_state/app/modules/novo/domain/entities/pokemon_entity.dart';

class PokemonModel extends PokemonEntity {
  PokemonModel(
      {required super.nome,
      required super.imageURL,
      required super.habilidade});

  // Coisas menos anêmicas, variedades, toMap, toJson, etc...
  factory PokemonModel.fromJson(Map<String, dynamic> json) {
    List<dynamic> habilidades = json['abilities'];

    return PokemonModel(
      nome: json['forms'][0]['name'] ?? 'Inválido',
      imageURL: json['sprites']['other']['official-artwork']['front_default'],
      habilidade:
          habilidades.map((e) => e['ability']['name'] as String).toList(),
    );
  }
}
