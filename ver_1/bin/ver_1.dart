import 'TodoObject.dart';
import 'TodoList.dart';

void main() {
  final test = TodoList('main', 'main');
  test.list.add(TodoObject(t: '0. test thing want to do frist'));
  test.list.add(
      TodoObject(t: '1. good to know it is low', imp: ImportanceLevel.Low));
  test.list.add(
      TodoObject(t: '2. good to know it is High', imp: ImportanceLevel.High));
  test.list.add(TodoObject(
      t: '3. good to know it is Medium', imp: ImportanceLevel.Medium));
  test.list.add(TodoObject(t: '4. good to know', imp: ImportanceLevel.High));

  test.list[1].setFinished();

  final result = test.categorizedByDate();
  result.forEach((key, value) {
    print('date: ${key}');
    value.forEach((element) => print(element.title));
  });
}
