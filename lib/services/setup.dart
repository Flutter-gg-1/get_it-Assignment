import 'package:get_it/get_it.dart';
import 'package:get_it_assignment/data/all_tweets.dart';

void setup() {
  GetIt.I.registerSingleton<AllTweets>(AllTweets());
}