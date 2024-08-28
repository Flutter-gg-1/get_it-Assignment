import 'package:get_it/get_it.dart';
import 'package:twitter/data_layer/global.dart';

void setup() {
  GetIt.I.registerSingleton<Global>(Global());
}
