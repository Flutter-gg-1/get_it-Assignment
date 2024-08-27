import 'package:assignment/data_layer/tweet_data.dart';

import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  GetIt.I.registerSingleton<TweetData>(TweetData());
}
