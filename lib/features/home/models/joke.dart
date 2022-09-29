class Joke {
  final int id;

  final String title;

  final String punch;

  const Joke({required this.id, required this.title, required this.punch});

  Joke.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['setup'],
        punch = json['delivery'];
}
