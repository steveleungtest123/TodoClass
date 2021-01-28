import 'TodoObject.dart';
import 'common/SimpleDateTime.dart';

enum Order { CreateDate, Updated, Finished, Deadline, Important }
enum Direction { Asc, Decs }

class TodoList {
  String _type;
  String _name;
  List<TodoObject> list = [];

  TodoList(String type, String name) {
    _type = type;
    _name = name;
  }

  List<TodoObject> orderByTargetDate(
      {Direction direction, List<TodoObject> todoList}) {
    final temp = List<TodoObject>.from(todoList ?? list);
    temp.sort((a, b) {
      final condi = a.targetDate.time.isBefore(b.targetDate.time);
      if (direction == Direction.Decs) {
        return condi ? 1 : -1;
      } else {
        return condi ? -1 : 1;
      }
    });
    return temp;
  }

  List<TodoObject> orderByCreateDate(
      {Direction direction, List<TodoObject> todoList}) {
    final temp = List<TodoObject>.from(todoList ?? list);
    temp.sort((a, b) {
      final condi = a.created.time.isBefore(b.created.time);
      if (direction == Direction.Decs) {
        return condi ? 1 : -1;
      } else {
        return condi ? -1 : 1;
      }
    });
    return temp;
  }

  List<TodoObject> orderByUpdateDate({Direction direction}) {
    final temp = List<TodoObject>.from(list);
    temp.sort((a, b) {
      final condi = a.updated.time.isBefore(b.updated.time);
      if (direction == Direction.Decs) {
        return condi ? 1 : -1;
      } else {
        return condi ? 1 : -1;
      }
    });
    return temp;
  }

  List<TodoObject> orderByImportance({Direction direction}) {
    final temp = List<TodoObject>.from(list);
    temp.sort((a, b) {
      final condi = a.important.levelIntNum.compareTo(b.important.levelIntNum);
      return direction == Direction.Decs ? condi * -1 : condi;
    });
    return temp;
  }

  Map<String, List<TodoObject>> categorizedByDate() {
    final result = <String, List<TodoObject>>{};
    final orderedList = orderByImportance(direction: Direction.Decs);
    orderedList.forEach((element) {
      final key = SimpleDateTime.timeString(element.targetDate.time,
          formatString: 'yyyy/MM/dd');
      final exits = result.containsKey(key);
      if (!exits) result[key] = <TodoObject>[];
      result[key].add(element);
    });
    return result;
  }

  String get type {
    return _type;
  }

  String get name {
    return _name;
  }
}
