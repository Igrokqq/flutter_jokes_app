import 'package:flutter/cupertino.dart';
import 'package:flutter_jokes_app/features/home/models/joke.dart';

@immutable
class JokeWidget extends StatelessWidget {
  final Joke joke;

  const JokeWidget({super.key, required this.joke});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(joke.title),
        Text(joke.punch),
      ],
    );
  }
}
