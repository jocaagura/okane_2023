import 'dart:async';

import 'package:okane_2023/interfaces/interface_controller.dart';
import 'package:okane_2023/models/model_counter.dart';

class ControllerCounter extends Controller {
  ModelCounter _modelCounter = const ModelCounter(counter: 0);

  final _counterController = StreamController<ModelCounter>.broadcast();

  void incrementCounter() {
    _modelCounter = _modelCounter.copyWith(
      counter: _modelCounter.counter + 1,
    );
    _counterController.add(_modelCounter);
  }

  Stream<ModelCounter> get stream => _counterController.stream;

  ModelCounter get modelCounter => _modelCounter;

  void dispose() {
    _counterController.close();
  }
}

final ControllerCounter controllerCounter = ControllerCounter();
