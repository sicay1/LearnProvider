import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';

class SecondProvider with ChangeNotifier {
  var count = 0;
  var te = "";
  var faker = new Faker();

  void changeTe(){
    count++;
    te = faker.address.city();
    notifyListeners();
  }
}