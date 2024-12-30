import 'package:explore_provider/counter/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.watch<CounterProvider>().counter.toString(),
            style: const TextStyle(fontSize: 50),
          ),
          const SizedBox(height: 150),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton.filled(
                icon: const Icon(
                  Icons.remove,
                  size: 30,
                ),
                onPressed: () {
                  context.read<CounterProvider>().decrement();
                },
              ),
              IconButton.filled(
                icon: const Icon(
                  Icons.add,
                  size: 30,
                ),
                onPressed: () {
                  context.read<CounterProvider>().increment();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
