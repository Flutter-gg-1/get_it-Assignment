import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:learn_get_it/data_layer/tweet_data.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  await GetStorage.init();
  GetIt.I.registerSingleton<TweetData>(TweetData());
}
