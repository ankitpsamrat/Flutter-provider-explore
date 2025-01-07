import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:explore_provider/counter/counter_provider.dart';
import 'package:explore_provider/favourite/favourite_provider.dart';
import 'package:explore_provider/slider/slider_provider.dart';
import 'package:explore_provider/theme/theme_provider.dart';
import 'package:explore_provider/theme/theme_screen.dart';

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
        ChangeNotifierProvider(create: (_) => SliderProvider()),
        ChangeNotifierProvider(create: (_) => FavouriteProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      // for theme provider to work, we need to wrap MaterialApp with Builder
      child: Builder(
        builder: (context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Provider explore',
            theme: Provider.of<ThemeProvider>(context).themeData,
            // home: HomeScreen(),
            // home: SliderScreen(),
            // home: FavouriteScreen(),
            home: const ThemeScreen(),
          );
        },
      ),
    );
  }
}
