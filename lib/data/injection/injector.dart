
import 'package:nikitchem/data/injection/injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';



/// get the getIt instance
final GetIt injector = GetIt.instance;

///
@InjectableInit()
Future<GetIt> configureDependencies()async => injector.init();
