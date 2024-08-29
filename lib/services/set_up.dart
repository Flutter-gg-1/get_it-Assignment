import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:twitter_app/data_layer/data_layer.dart';

Future<void> setup () async {
  await GetStorage.init();
  GetIt.I.registerSingleton<TweetData>(TweetData());
}