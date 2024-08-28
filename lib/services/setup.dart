import 'package:get_it/get_it.dart';
import 'package:learn_get_it/data_layer/tweet_data.dart';

final getIt = GetIt.instance;

void setup() {
// Alternatively you could write it if you don't like global variables
  GetIt.I.registerSingleton<TweetData>(TweetData());
}
