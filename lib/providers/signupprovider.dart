
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/signup.dart';



class SignupProviderNotifier extends ChangeNotifier {

  late SignupModel data;

  set(SignupModel v){
    data = v;
    notifyListeners();
  }

}


class SignedUpNotifier extends ChangeNotifier {

  bool state = false; 

  set() async {
    state = true;
    notifyListeners();
  }
  unset() async {
    state = false;
    notifyListeners();
  }
}

final signedupProvider = ChangeNotifierProvider<SignedUpNotifier>(
  (ref) => SignedUpNotifier(),
);


final signupProvider = ChangeNotifierProvider<SignupProviderNotifier>(
  (ref) => SignupProviderNotifier(),
);

