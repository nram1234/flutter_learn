class UserDataType {
  String _username;
  String _password;
  int _id;

  UserDataType(this._username, this._password);

  UserDataType.map(dynamic obj) {
    this._username = obj['username'];
    this._password = obj['password'];
    this._id = obj['id'];
  }

  String get usernume => _username;

  String get password => _password;

  int get id => _id;

  Map<String, dynamic> tomap() {
    var map = new Map<String, dynamic>();
    map['username'] = _username;
    map['password'] = _password;
    if (id != null) {
      map['id'] = _id;
    }
    return map;
  }

  UserDataType.fromMap(Map<String, dynamic> map) {
    this._username = map['username'];
    this._password = map['password'];
    this._id = map['id'];
  }
}
