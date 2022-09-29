import 'package:flutter/material.dart';
import 'package:flutter_jokes_app/features/home/models/joke.dart';
import 'package:flutter_jokes_app/features/home/services/joke_service.dart';

class JokeProvider with ChangeNotifier {
  late final JokeService _jokeService;

  JokeProvider() {
    _jokeService = JokeService();
  }

  Future<Joke> getRandomJoke() async {
    return _jokeService.getRandomJoke();
  }
}
