part of graphview;

class Edge<T> {
  Node source;
  Node destination;
  T? data;

  Key? key;
  Paint? paint;

  Edge(
    this.source,
    this.destination, {
    this.key,
    this.paint,
    this.data,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Edge && hashCode == other.hashCode;

  @override
  int get hashCode => key?.hashCode ?? Object.hash(source, destination);
}
