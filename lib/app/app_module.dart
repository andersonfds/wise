import 'package:flutter_modular/flutter_modular.dart';

import 'features/dashboard/dashboard_module.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: DashboardModule()),
      ];
}
