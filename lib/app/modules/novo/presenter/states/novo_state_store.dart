import 'package:exemplo_state/app/modules/novo/domain/entities/pokemon_entity.dart';
import 'package:exemplo_state/app/modules/novo/domain/errors/errors.dart';
import 'package:exemplo_state/app/modules/novo/presenter/states/novo_state.dart';
import 'package:mobx/mobx.dart';

part 'novo_state_store.g.dart';

class NovoStateStore = _NovoStateStoreBase with _$NovoStateStore;

abstract class _NovoStateStoreBase with Store {
  @observable
  NovoState state = StartState();

  @action
  void setStart() => state = StartState();

  @action
  void setLoading() => state = LoadingState();

  @action
  void setSuccess(PokemonEntity pokemon) =>
      state = SuccessState(pokemon: pokemon);

  @action
  void setError(PokemonException error) =>
      state = ErrorState(error: error.error);
}
