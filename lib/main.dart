import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:explore_provider/counter/counter_provider.dart';
import 'package:explore_provider/counter/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider explore',
        home: HomeScreen(),
      ),
    );
  }
}
