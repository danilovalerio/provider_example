import 'package:flutter/cupertino.dart';

///Representa nosso estado da contagem
class Counter extends ChangeNotifier {

  int count = 0;

  void increment(){
    count++;
    ///Notifica para todos observadores a mudança que ocorreu
    // notifyListeners();
    // debugPrint('$count');
    notifyAndDebug();
  }

  void decrement(){
    count--;
    // notifyListeners();
    // debugPrint('$count');
    notifyAndDebug();
  }

  void notifyAndDebug(){
    notifyListeners();
    debugPrint('$count');
  }
}