import 'package:baf/models/counter/counter_model.dart';
import 'package:stacked/stacked.dart';

class CounterService with ReactiveServiceMixin {
  CounterService() {
    listenToReactiveValues([_counter]);
  }
  final ReactiveValue<CounterModel> _counter =
      ReactiveValue<CounterModel>(CounterModel());
  CounterModel get counter => _counter.value;

  Future<void> initService(CounterModel data) async {
    _counter.value = data;
  }

// Add counter
  Future<void> addCount() async {
    var value = counter.value;
    var maxValue = counter.maxValue;
    if (value < maxValue) {
      _counter.value = counter.copyWith(value: value + 1);
    }
  }

// Subtract counter
  Future<void> subtractCount() async {
    var value = counter.value;
    var minValue = counter.minValue;
    if (value > minValue) {
      _counter.value = counter.copyWith(value: value - 1);
    }
  }

// Reset counter
  void resetCount() {
    var d = CounterModel();
    _counter.value = counter.copyWith(value: d.value);
  }
}
