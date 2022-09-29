import 'package:dio/dio.dart';
import 'package:flutter_jokes_app/features/home/models/joke.dart';
import 'package:flutter_jokes_app/network/http_client.dart';

class JokeService {
  late final Dio _httpClient;

  JokeService() {
    _httpClient = HttpClient().init(BaseOptions(
      headers: {
        'X-RapidAPI-Key': '22d7c9f7a9mshbc7ef07644a4e74p1837f9jsn446a9211ba84',
        'X-RapidAPI-Host': 'jokeapi-v2.p.rapidapi.com'
      },
    ));
  }

  Future<Joke> getRandomJoke() async {
    final Response response = await _httpClient.get(
      'https://jokeapi-v2.p.rapidapi.com/joke/Any',
      queryParameters: {
        'format': 'json',
        'contains': 'C%23',
        'idRange': '0-150',
        'blacklistFlags': 'nsfw,racist'
      },
    );

    return Joke.fromJson(response.data);
  }
}
