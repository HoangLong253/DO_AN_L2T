class Gamer {
  String? username;
  String? email;
  int? level;
  String? rank;

  Gamer({
    this.username,
    this.email,
    this.level,
    this.rank
  });

  Map<String, dynamic> toJson() => {
    'username': username,
    'email': email,
    'level': level,
    'rank': rank
  };

  static Gamer fromJson(Map<String, dynamic> json) => Gamer(
    username: json['username'],
    email: json['email'],
    level: json['level'],
    rank: json['rank'],
  );
}