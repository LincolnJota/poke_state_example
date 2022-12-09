import 'package:exemplo_state/app/modules/novo/domain/entities/pokemon_entity.dart';

abstract class NovoState {}

class StartState implements NovoState {}

class LoadingState implements NovoState {}

class SuccessState implements NovoState {
  final PokemonEntity pokemon;

  SuccessState({
    required this.pokemon,
  });
}

class ErrorState implements NovoState {
  final String error;
  ErrorState({
    required this.error,
  });
}
