import 'package:get_it/get_it.dart';

import '../data_layer/tweet_data.dart';

void setupData(){
  GetIt.I.registerSingleton<TweetData>(TweetData());
}