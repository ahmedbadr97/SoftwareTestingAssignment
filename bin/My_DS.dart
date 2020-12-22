//________________________________________Node_____________________________________________//
class _Node<T> {
  T _value;
  _Node<T> _next;

  _Node(T value) {
    _value = value;
    _next = null;
  }
  T get value => _value;

  set value(T value) {
    _value = value;
  }
  _Node<T> get next => _next;
  set next(_Node<T> value) {
    _next = value;
  }
}
//_________________________________________________________________________________________//

//______________________________________LinkedList_______________________________________//
class _MyLinkedList<T> {
  _Node<T> _front;
  _Node<T> _rear;
  int _length;

  _MyLinkedList() {
    _length = 0;
    _front = null;
    _rear = null;
  }

  T peek() {
    if(_front!=null) {
      return _front.value;
    }
    return null;
  }

  void _insertFront(T value) {
    var newNode = _Node<T>(value);
    if (isEmpty()) {
      _front = _rear = newNode;
    } else {
      newNode.next = _front;
      _front = newNode;
    }
    _length++;
  }
  void _insertRear(T value) {
    var newNode = _Node<T>(value);
    if (isEmpty()) {
      _front = _rear = newNode;
    } else {
      _rear.next = newNode;
      _rear = newNode;
    }
    _length++;
  }

  T _deleteFront() {
    if (isEmpty()) return null;
    var deletedValue = _front.value;

    if (_length == 1) {
      _front = _rear = null;
    } else {
      _front = _front.next;
    }
    _length--;
    return deletedValue;
  }
  bool isEmpty() {
    return _length == 0;
  }
  int get length => _length;
}
//_________________________________________________________________________________________//

//___________________________________Stack______________________________________________//
class MyStack<T> extends _MyLinkedList<T> {
  push(T value) {
    _insertFront(value);
  }

  T pop() {
    return _deleteFront();
  }
}

//_________________________________________________________________________________________//

//____________________________________Queue_____________________________________________//
class MyQueue<T> extends _MyLinkedList<T> {
  enqueue(T value) {
    _insertRear(value);
  }

  T dequeue() {
    return _deleteFront();
  }

}
