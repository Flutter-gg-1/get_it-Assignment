import 'package:get_assignment/data_layer/tweets_data.dart';
import 'package:get_it/get_it.dart';

void setup() {
// Alternatively you could write it if you don't like global variables
  GetIt.I.registerSingleton<TweetsData>(TweetsData());
}
