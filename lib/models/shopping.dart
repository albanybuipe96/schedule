
import 'package:schedule/models/model.dart';

class Shopping extends Model {
  final double price;
  final int count;
  bool isBought;

  Shopping({String name, this.price, this.count = 0, this.isBought = false}) : super(name: name);

  void toggle() => isBought = !isBought;
}