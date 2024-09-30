class Todo {
  final String name;
  final DateTime createdAt;

  const Todo({
    required this.name,
    required this.createdAt,
  });

  @override
  String toString() {
    return 'Todo{name: $name, createdAt: $createdAt}';
  }
}
