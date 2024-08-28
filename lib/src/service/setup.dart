import 'package:get_it/get_it.dart';
import 'package:get_it_assignment/src/data_layer/post_data.dart';
import 'package:get_storage/get_storage.dart';

Future<void> setup() async {
  await GetStorage.init();
// Alternatively you could write it if you don't like global variables
  GetIt.I.registerSingleton<PostData>(PostData());
}
