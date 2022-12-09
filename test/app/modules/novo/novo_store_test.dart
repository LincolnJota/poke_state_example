import 'package:exemplo_state/app/modules/novo/presenter/novo_store.dart';
import 'package:exemplo_state/app/modules/novo/presenter/states/novo_state_store.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late NovoStore store;
  late NovoStateStore stateStore;

  setUpAll(() {
    stateStore = NovoStateStore();
    store = NovoStore(stateStore);
  });

  test('increment count', () async {
    //expect(store.value, equals(0));
    //store.increment();
    //expect(store.value, equals(1));
  });
}
