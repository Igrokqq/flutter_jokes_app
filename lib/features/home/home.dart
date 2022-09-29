import 'package:flutter/material.dart';
import 'package:flutter_jokes_app/features/home/providers/joke_provider.dart';
import 'package:flutter_jokes_app/features/home/widgets/joke_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final JokeProvider _jokeProvider;

  @override
  void initState() {
    super.initState();
    _jokeProvider = JokeProvider();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _jokeProvider.getRandomJoke(),
      builder: ((context, snapshot) {
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (!snapshot.hasData) const Text('Loading daily joke...'),
                if (snapshot.hasData)
                  JokeWidget(
                    joke: snapshot.data!,
                  ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
