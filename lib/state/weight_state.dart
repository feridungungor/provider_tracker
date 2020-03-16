import 'package:flutter/cupertino.dart';
import 'package:flutter_state/models/weight.dart';

class WeightState with ChangeNotifier {
  List<Weight> _weights = [
    Weight(value: 77, time: DateTime.utc(2020, 03, 03)),
    Weight(value: 75, time: DateTime.utc(2020, 03, 10)),
    Weight(value: 75, time: DateTime.utc(2020, 03, 12)),
  ];

  List<Weight> get weights => _weights;

  add(Weight weight){
    _weights.insert(0, weight);
    notifyListeners();
  }

  remove(){
    _weights.length = _weights.length-1;
    notifyListeners();
  }
}
