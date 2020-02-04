
import 'package:schedule/models/model.dart';

class Todo extends Model {
  bool isCompleted;

  Todo({String name, this.isCompleted = false}) : super(name: name);

  void toggle() => isCompleted = !isCompleted;
}