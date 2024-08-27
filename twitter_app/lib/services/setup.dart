import 'package:get_it/get_it.dart';

import '../data_layer/tweet_data.dart';

void setup() {
// Alternatively you could write it if you don't like global variables
  GetIt.I.registerSingleton<TweetData>(TweetData());
}
