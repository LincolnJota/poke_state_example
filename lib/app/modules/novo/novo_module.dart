import 'package:dio/dio.dart';
import 'package:exemplo_state/app/modules/novo/domain/usecases/get_pokemon_usecase.dart';
import 'package:exemplo_state/app/modules/novo/external/datasources/pokemon_datasource_impl.dart';
import 'package:exemplo_state/app/modules/novo/infra/repositories/pokemon_repository_impl.dart';
import 'package:exemplo_state/app/modules/novo/presenter/states/novo_state_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/novo_page.dart';
import 'presenter/novo_store.dart';

class NovoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => NovoStateStore()),
    Bind.lazySingleton((i) => Dio()),
    Bind.lazySingleton((i) => PokemonDatasourceImpl(i())),
    Bind.lazySingleton((i) => PokemonRepositoryImpl(i())),
    Bind.lazySingleton((i) => GetPokemonUsecaseImpl(i())),
    Bind.lazySingleton((i) => NovoStore(i(), i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const NovoPage()),
  ];
}
