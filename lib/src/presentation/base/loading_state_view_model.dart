import 'package:flutter/cupertino.dart';

class LoadingStateViewModel extends ChangeNotifier {
  bool isLoading = false;

  Future<dynamic> whileLoading(Future Function() future) {
    return Future.microtask(toLoading).then((_) => future()).whenComplete(toIdle);
  }

  void toLoading() {
    if (isLoading) return;
    isLoading = true;
    notifyListeners();
  }

  void toIdle() {
    if (!isLoading) return;
    isLoading = false;
    notifyListeners();
  }
}
