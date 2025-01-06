import 'package:explore_provider/favourite/favourite_provider.dart';
import 'package:explore_provider/favourite/favourite_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // ChangeNotifierProvider(create: (_) => CounterProvider()),
        // ChangeNotifierProvider(create: (_) => SliderProvider()),
        ChangeNotifierProvider(create: (_) => FavouriteProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider explore',
        // home: HomeScreen(),
        // home: SliderScreen(),
        home: FavouriteScreen(),
      ),
    );
  }
}
