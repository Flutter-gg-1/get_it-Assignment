import 'package:get_it/get_it.dart';
import 'package:get_it_assignment/src/data_layer/post_data.dart';
import 'package:get_storage/get_storage.dart';

/*
*
* It is used to handle dependency injection and provide instances of services throughout the application
*
* */
Future<void> setup() async {
  // GetIt instance
  await GetStorage.init();

  // Alternatively you could write it if you don't like global variables
  GetIt.I.registerSingleton<PostData>(PostData());
}
