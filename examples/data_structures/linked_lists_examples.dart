import 'package:dsa_dart/data_structures/lists/linked_lists/linked_list.dart';

void main() {
  final LinkedList<int> list = LinkedList<int>();

  list.add(1);
  list.insert(0, 5);
  list.removeAt(0);
}
