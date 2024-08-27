import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:twitter_app/data/tweet_data.dart';

final locator = GetIt.instance;
Future<void> setup() async{
    await GetStorage.init();
  locator.registerSingleton<TweetData>(TweetData());
}
