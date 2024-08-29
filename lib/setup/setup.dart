import 'package:get_it/get_it.dart';

import 'package:twter/twetts/twets.dart';
import 'package:twter/twetts/twettsTask.dart';

void setup() {


// Alternatively you could write it if you don't like global variables
  GetIt.I.registerSingleton<Twets>(TwetsTask() as Twets);
}