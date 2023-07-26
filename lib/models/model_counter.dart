import '../interfaces/interface_model.dart';

class ModelCounter implements Model {
  const ModelCounter({this.counter = 0});

  final int counter;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> tmpJson = {};
    tmpJson['counter'] = counter;
    return tmpJson;
  }

  @override
  ModelCounter copyWith({int? counter}) {
    return ModelCounter(counter: counter ?? this.counter);
  }

  @override
  String toString() {
    return 'My counter is $counter';
  }
}
