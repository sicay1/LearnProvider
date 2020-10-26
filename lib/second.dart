import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';

class SecondProvider with ChangeNotifier {
  var te = "";
  var faker = new Faker();

  void changeTe(){
    te = faker.address.city();
    notifyListeners();
  }
}