import 'package:get_it/get_it.dart';
import 'package:twitter/data_layer/global.dart';

Future<void> setup() async {
  GetIt.I.registerSingleton<Global>(Global());
}
