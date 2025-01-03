import 'package:explore_provider/slider/slider_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // MultiProvider(
        //   providers: [
        //     ChangeNotifierProvider(create: (_) => CounterProvider()),
        //   ],
        //   child: const MaterialApp(
        //     debugShowCheckedModeBanner: false,
        //     title: 'Provider explore',
        //     home: HomeScreen(),
        //   ),
        // );

        const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider explore',
      home: SliderScreen(),
    );
  }
}
