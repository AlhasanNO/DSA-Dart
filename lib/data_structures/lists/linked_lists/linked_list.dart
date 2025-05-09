/// Node class representing an element in the linked list.
class Node<T> {
  T data;
  Node<T>? next;

  Node(this.data, this.next);
}

/// A generic singly linked list class.
class LinkedList<T> {
  Node<T>? head;
  Node<T>? tail;
  int _length = 0;

  /// Returns the number of elements in the list.
  int get length => _length;

  /// Adds [value] to the end of the list.
  void add(T value) {
    Node<T> newNode = Node(value, null);
    if (head == null) {
      head = newNode;
      tail = head;
    } else {
      tail!.next = newNode;
      tail = newNode;
    }

    _length++;
  }

  /// Inserts [value] at the given [index].
  void insert(int index, T value) {
    if (index < 0 || index >= length) {
      throw RangeError('Index out of range');
    }

    if (index == 0) {
      head = Node<T>(value, head);
      tail ??= head;
      _length++;
      return;
    }

    Node<T>? current = head;
    for (int i = 0; i < index - 1; i++) {
      current = current!.next;
    }

    current!.next = Node<T>(value, current.next);
    if (index == length) {
      tail = current.next;
    }

    _length++;
  }

  /// Removes and returns the element at [index].
  T removeAt(int index) {
    if (index < 0 || index >= length) {
      throw RangeError('Index out of range');
    }

    if (index == 0) {
      T removedValue = head!.data;
      head = head!.next;
      _length--;
      if (head == null) {
        tail = null;
      }

      return removedValue;
    }

    Node<T>? current = head;
    for (int i = 0; i < index - 1; i++) {
      current = current!.next;
    }

    T removedValue = current!.next!.data;
    current.next = current.next!.next;
    _length--;
    if (index == length) {
      tail = current;
    }

    return removedValue;
  }

  /// Returns `true` if [value] is found in the list.
  bool contains(T value) {
    if (head == null) {
      return false;
    }

    Node<T>? current = head;
    while (current != null) {
      if (current.data == value) {
        return true;
      }

      current = current.next;
    }

    return false;
  }

  /// Returns the index of the first occurrence of [value],
  /// or -1 if not found.
  int indexOf(T value) {
    if (head == null) {
      return -1;
    }

    Node<T>? current = head;
    for (int i = 0; i < length; i++) {
      if (current!.data == value) {
        return i;
      }

      current = current.next;
    }

    return -1;
  }

  /// Clears the entire list.
  void clear() {
    head = null;
    tail = null;
    _length = 0;
  }

  /// Provides read access to element at [index].
  T operator [](int index) {
    if (index < 0 || index >= length) {
      throw RangeError('Index out of range');
    }

    if (index == length - 1) {
      return tail!.data;
    }

    Node<T>? current = head;
    for (int i = 0; i < index; i++) {
      current = current!.next;
    }

    return current!.data;
  }

  /// Provides write access to element at [index].
  void operator []=(int index, T value) {
    if (index < 0 || index >= length) {
      throw RangeError('Index out of range');
    }

    if (index == length - 1) {
      tail!.data = value;
      return;
    }

    Node<T>? current = head;
    for (int i = 0; i < index; i++) {
      current = current!.next;
    }

    current!.data = value;
  }

  /// Concatenates this list with [other] and returns a new list.
  LinkedList<T> operator +(LinkedList<T> other) {
    LinkedList<T> newList = this;
    if (other.head == null) {
      return newList;
    }

    if (head == null) {
      newList.head = other.head;
      newList.tail = other.tail;
      newList._length = other.length;
      return newList;
    }

    newList.tail!.next = other.head;
    newList.tail = other.tail;
    newList._length += other.length;
    return newList;
  }

  /// Returns a new list with the first occurrence of [value] removed.
  LinkedList<T> operator -(T value) {
    LinkedList<T> newList = this;
    if (head == null) {
      return newList;
    }

    if (newList.head!.data == value) {
      newList.head = newList.head!.next;
      newList._length--;
      if (newList.head == null) {
        newList.tail = null;
      }

      return newList;
    }

    Node<T>? current = newList.head;
    while (current!.next != null) {
      if (current.next!.data == value) {
        current.next = current.next!.next;
        newList._length--;
        if (current.next == null) {
          newList.tail = current;
        }
      }

      current = current.next;
    }

    return newList;
  }

  /// Applies the given [action] to each element in the list.
  void forEach(void Function(T) action) {
    Node<T>? current = head;
    while (current != null) {
      action(current.data);
      current = current.next;
    }
  }

  /// Returns a new [LinkedList] containing the results of applying [transform] to each element.
  LinkedList<S> map<S>(S Function(T) transform) {
    LinkedList<S> transformedList = LinkedList<S>();

    if (head == null) {
      return transformedList;
    }

    Node<T>? current = head;
    while (current != null) {
      S transformedData = transform(current.data);
      transformedList.add(transformedData);
      current = current.next;
    }

    return transformedList;
  }

  /// Returns a new [LinkedList] containing only the elements that satisfy [test].
  LinkedList<T> where(bool Function(T) test) {
    LinkedList<T> filteredList = LinkedList<T>();
    if (head == null) {
      return filteredList;
    }

    Node<T>? current = head;
    while (current != null) {
      if (test(current.data)) {
        filteredList.add(current.data);
      }

      current = current.next;
    }

    return filteredList;
  }

  @override
  String toString() {
    if (head == null) {
      return 'LinkedList: []';
    }

    StringBuffer buffer = StringBuffer('LinkedList: [');
    Node<T>? current = head;
    while (current != null) {
      buffer.write(current.data.toString());
      if (current.next != null) {
        buffer.write(',');
      }

      current = current.next;
    }

    buffer.write(']');
    return buffer.toString();
  }
}
