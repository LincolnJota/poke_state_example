import 'package:exemplo_state/app/modules/novo/domain/usecases/get_pokemon_usecase.dart';
import 'package:exemplo_state/app/modules/novo/presenter/states/novo_state_store.dart';
import 'package:mobx/mobx.dart';

import 'states/novo_state.dart';

part 'novo_store.g.dart';

class NovoStore = _NovoStoreBase with _$NovoStore;

abstract class _NovoStoreBase with Store {
  final GetPokemonUsecase _usecase;
  final NovoStateStore _stateStore;

  _NovoStoreBase(this._stateStore, this._usecase);

  @observable
  String pokemon = '';

  @computed
  bool get canSearch => pokemon.isNotEmpty;

  @action
  void setPokemon(String value) => pokemon = value;

  // Executa o usecase por aqui...
  Future<void> getPokemon() async {
    _stateStore.setLoading();
    var result = await _usecase.getPokemon(pokemon);

    result.fold((l) {
      _stateStore.setError(l);
    }, (r) {
      _stateStore.setSuccess(r);
    });
  }

  @computed
  NovoState get state => _stateStore.state;

  @action
  setStartState() => _stateStore.setStart();
}
