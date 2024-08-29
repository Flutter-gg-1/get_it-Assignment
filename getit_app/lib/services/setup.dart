import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getit_app/data/tweet_data.dart';

Future<void> setup() async {
  await GetStorage.init();
 GetIt.I.registerSingleton<TweetData>(TweetData());
}
