class Guest {
  final String id;
  final String name;
  final bool confirmed;

  Guest({
    required this.id,
    required this.name,
    this.confirmed = false,
  });

  Guest copyWith({
    String? id,
    String? name,
    bool? confirmed,
  }) =>
      Guest(
        id: id ?? this.id,
        name: name ?? this.name,
        confirmed: confirmed ?? this.confirmed,
      );
}
