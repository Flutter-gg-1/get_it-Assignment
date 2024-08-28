import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import '../data_layer/tweet_data.dart';

void setupData() async {
  await GetStorage.init();
  GetIt.I.registerSingleton<TweetData>(TweetData());
}
