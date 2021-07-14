
class SingleObserver<T> {
  T? _value;
  bool _observed = false;

  SingleObserver({T? data}) : _value = data;

  T? get value => _value;

  T? observer() {
    if (_observed) return null;

    _observed = true;
    return _value;
  }

  void changeValue(T? newValue) {
    _value = newValue;
    _observed = false;
  }
}