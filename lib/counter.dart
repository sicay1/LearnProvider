// library faker.example;

import 'package:faker/faker.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';

/// 1. tạo class với mixin ChangeNotifier
///
/// property 'value'
///
/// function 'increment' --> nhớ có notifiListeners
///
// mixin ChangeNotifier{}
class Counter extends ChangeNotifier {
  String txt = '';
  Faker faker = const Faker(); // = new Faker();
  Logger logger = Logger(); // = new Logger();

  void changeRandomTxt() {
    // txt = faker.sport.name();
    txt = faker.food.cuisine();

    // logger.v("Verbose log");
    // logger.d("Debug log");
    // logger.i("Info log");
    // logger.w("Warning log");
    // logger.e("Error log");
    // logger.wtf("What a terrible failure log");
    logger.d(txt);

    notifyListeners();
  }
}
