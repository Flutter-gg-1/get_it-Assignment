import 'package:get_asg/data_handle/models/tweet_model.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<TweetModel>(TweetModel());

// Alternatively you could write it if you don't like global variables
  
}