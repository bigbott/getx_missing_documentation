class MutableUser {
  String _name;
  int _age;

  MutableUser({name, age})
      : _name = name,
        _age = age;

  String get name => _name;
  int get age => _age;

  MutableUser changeWith({String? name, int? age}) {
    _name = name ?? _name;
    _age = age ?? _age;
    return this;
  }
}
