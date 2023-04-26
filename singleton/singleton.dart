class SingleConnection {
  String? url;
  int? port;
  static String? _connectionString;
  static SingleConnection? _instance;

  SingleConnection._inner({this.url, this.port}) {
    _connectionString = "$url:$port";
  }
  factory SingleConnection({url, port}) {
    if (_instance != null) {
      return _instance!;
    }
    _instance = SingleConnection._inner(url: url, port: port);
    return _instance!;
  }

  String get connectionString => _connectionString as String;
  // String get instance => _instance;
}

void main() {
  var s1 = SingleConnection(url: "example.com", port: 1337);
  var s2 = SingleConnection(url: "xyz.com", port: 1333);
  print(s1.connectionString);
  print(s2.connectionString);
}
