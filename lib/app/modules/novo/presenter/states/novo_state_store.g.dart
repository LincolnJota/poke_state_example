// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'novo_state_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NovoStateStore on _NovoStateStoreBase, Store {
  late final _$stateAtom =
      Atom(name: '_NovoStateStoreBase.state', context: context);

  @override
  NovoState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(NovoState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  late final _$_NovoStateStoreBaseActionController =
      ActionController(name: '_NovoStateStoreBase', context: context);

  @override
  void setStart() {
    final _$actionInfo = _$_NovoStateStoreBaseActionController.startAction(
        name: '_NovoStateStoreBase.setStart');
    try {
      return super.setStart();
    } finally {
      _$_NovoStateStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoading() {
    final _$actionInfo = _$_NovoStateStoreBaseActionController.startAction(
        name: '_NovoStateStoreBase.setLoading');
    try {
      return super.setLoading();
    } finally {
      _$_NovoStateStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSuccess(PokemonEntity pokemon) {
    final _$actionInfo = _$_NovoStateStoreBaseActionController.startAction(
        name: '_NovoStateStoreBase.setSuccess');
    try {
      return super.setSuccess(pokemon);
    } finally {
      _$_NovoStateStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(PokemonException error) {
    final _$actionInfo = _$_NovoStateStoreBaseActionController.startAction(
        name: '_NovoStateStoreBase.setError');
    try {
      return super.setError(error);
    } finally {
      _$_NovoStateStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
state: ${state}
    ''';
  }
}
