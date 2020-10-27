import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';

class SecondProvider extends ChangeNotifier {
  int count = 0;
  String te = '';
  Faker faker = const Faker(); // = new Faker();

  void changeTe(){
    count++;
    te = faker.address.city();
    notifyListeners();
  }
}