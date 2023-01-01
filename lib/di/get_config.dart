import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:listview_cubit_hooks/di/get_config.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: false,
  asExtension: true,
)
void configureDependencies() => getIt.init();
