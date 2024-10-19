class ImmutableUser {
  final String name;
  final int age;

  ImmutableUser({required this.name, required this.age});

  ImmutableUser copyWith({String? name, int? age}) {
    return ImmutableUser(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ImmutableUser &&
      other.name == name &&
      other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}