import 'package:baf/app/app.locator.dart';
import 'package:baf/app/app.logger.dart';
import 'package:baf/models/counter/counter_model.dart';
import 'package:baf/services/counter_service.dart';
import 'package:stacked/stacked.dart';

class NumberCounterViewModel extends ReactiveViewModel {
  final log = getLogger('NumberCounterViewModel');
  final _counterService = locator<CounterService>();

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_counterService];

  CounterModel get counter => _counterService.counter;

  Future<void> init(int value) async {
    _counterService.initService(CounterModel(value: value));
  }

  Future<void> addValue() async {
    _counterService.addCount();
    notifyListeners();
  }

  Future<void> subtractValue() async {
    _counterService.subtractCount();
    notifyListeners();
  }
}
