part of graphview;

class Node<T> {
  ValueKey? key;
  T? data;

  Node.Id(
    dynamic id, {
    this.data,
  }) {
    key = ValueKey(id);
  }

  Size size = Size(0, 0);

  Offset position = Offset(0, 0);

  double get height => size.height;

  double get width => size.width;

  double get x => position.dx;

  double get y => position.dy;

  set y(double value) {
    position = Offset(position.dx, value);
  }

  set x(double value) {
    position = Offset(value, position.dy);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Node && hashCode == other.hashCode;

  @override
  int get hashCode {
    return key?.value.hashCode ?? key.hashCode;
  }

  @override
  String toString() {
    return 'Node{position: $position, key: $key, _size: $size}';
  }
}
