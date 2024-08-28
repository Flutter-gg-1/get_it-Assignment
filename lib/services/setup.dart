import 'package:assignment15/data_layer/tweet_data.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';

Future<void> setup()async{
  await GetStorage.init();
    GetIt.I.registerSingleton<TweetData>(TweetData());

}