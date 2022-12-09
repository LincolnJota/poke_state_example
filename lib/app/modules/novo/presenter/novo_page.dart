import 'package:exemplo_state/app/modules/novo/domain/entities/pokemon_entity.dart';
import 'package:exemplo_state/app/modules/novo/presenter/states/novo_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'novo_store.dart';

class NovoPage extends StatefulWidget {
  const NovoPage({Key? key}) : super(key: key);
  @override
  NovoPageState createState() => NovoPageState();
}

class NovoPageState extends State<NovoPage> {
  final NovoStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: Observer(
        builder: (context) {
          var state = store.state;

          if (state is StartState) {
            return _buildForm();
          }
          if (state is LoadingState) {
            return _showLoading();
          }

          if (state is ErrorState) {
            return _showError(state.error);
          }
          if (state is SuccessState) {
            return _buildPokemonCard(state.pokemon);
          }

          return _buildForm();
        },
      ),
    );
  }

  Center _buildPokemonCard(PokemonEntity pokemon) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
            width: 290,
            child: ElevatedButton(
              onPressed: store.setStartState,
              child: const Text('Voltar'),
            ),
          ),
          SizedBox(
            height: 500,
            width: 300,
            child: Card(
              shadowColor: Colors.blueGrey,
              color: Colors.blueGrey,
              elevation: 10,
              child: Column(
                children: [
                  Image.network(pokemon.imageURL, width: 250, height: 250),
                  Text(pokemon.nome.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      )),
                  Divider(thickness: 2, color: Colors.blueGrey.shade700),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          'Habilidades:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      shrinkWrap: true,
                      itemCount: pokemon.habilidade.length,
                      itemBuilder: (context, index) {
                        return Card(
                          color: Colors.blueGrey.shade800,
                          child: ListTile(
                            title: Text(
                              pokemon.habilidade[index],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _showError(String error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(error),
          const SizedBox(height: 12),
          ElevatedButton(
              onPressed: store.setStartState, child: const Text('Voltar')),
        ],
      ),
    );
  }

  _showLoading() {
    return const Center(
      child: SizedBox(
        height: 100,
        width: 100,
        child: CircularProgressIndicator(
          color: Colors.red,
        ),
      ),
    );
  }

  _buildForm() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
            width: 200,
            child: TextField(
              onChanged: store.setPokemon,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: InputBorder.none,
                label: Text('Nome do Pokemon'),
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(
              onPressed: store.canSearch
                  ? () {
                      // Executa o usecase, mas como?
                      store.getPokemon();
                    }
                  : null,
              child: const Text('Buscar'),
            ),
          ),
        ],
      ),
    );
  }
}
