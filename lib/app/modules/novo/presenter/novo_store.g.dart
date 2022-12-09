// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'novo_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NovoStore on _NovoStoreBase, Store {
  Computed<bool>? _$canSearchComputed;

  @override
  bool get canSearch =>
      (_$canSearchComputed ??= Computed<bool>(() => super.canSearch,
              name: '_NovoStoreBase.canSearch'))
          .value;
  Computed<NovoState>? _$stateComputed;

  @override
  NovoState get state => (_$stateComputed ??=
          Computed<NovoState>(() => super.state, name: '_NovoStoreBase.state'))
      .value;

  late final _$pokemonAtom =
      Atom(name: '_NovoStoreBase.pokemon', context: context);

  @override
  String get pokemon {
    _$pokemonAtom.reportRead();
    return super.pokemon;
  }

  @override
  set pokemon(String value) {
    _$pokemonAtom.reportWrite(value, super.pokemon, () {
      super.pokemon = value;
    });
  }

  late final _$_NovoStoreBaseActionController =
      ActionController(name: '_NovoStoreBase', context: context);

  @override
  void setPokemon(String value) {
    final _$actionInfo = _$_NovoStoreBaseActionController.startAction(
        name: '_NovoStoreBase.setPokemon');
    try {
      return super.setPokemon(value);
    } finally {
      _$_NovoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setStartState() {
    final _$actionInfo = _$_NovoStoreBaseActionController.startAction(
        name: '_NovoStoreBase.setStartState');
    try {
      return super.setStartState();
    } finally {
      _$_NovoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pokemon: ${pokemon},
canSearch: ${canSearch},
state: ${state}
    ''';
  }
}
