import 'package:flutter/foundation.dart';

class BaseViewModel extends ChangeNotifier {
  bool _busy;
  bool get busy => _busy;

  void setBusy(bool value) {
    _busy = value;
    notifyListeners();
  }
}
