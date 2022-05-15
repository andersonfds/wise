import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/pages/dashobard_page.dart';

class DashboardModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const DashboardPage()),
      ];
}
