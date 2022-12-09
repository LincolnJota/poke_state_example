import 'package:exemplo_state/app/modules/novo/novo_module.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:modular_test/modular_test.dart';

void main() {
  setUpAll(() {
    initModule(NovoModule());
  });
}
