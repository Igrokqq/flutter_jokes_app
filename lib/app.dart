import 'package:flutter/material.dart';
import 'package:flutter_jokes_app/features/home/home.dart';
import 'package:flutter_jokes_app/features/home/providers/joke_provider.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => JokeProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Jokes app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Jokes app'),
      ),
    );
  }
}
