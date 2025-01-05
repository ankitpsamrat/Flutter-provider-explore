import 'package:explore_provider/slider/slider_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider App'),
      ),
      body: Consumer<SliderProvider>(
        builder: (context, provider, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Slider(
                value: provider.sliderValue,
                onChanged: (value) {
                  provider.setSliderValue(value);
                },
              ),
              Container(
                height: 200,
                margin: const EdgeInsets.all(20),
                color: Colors.green.withOpacity(provider.sliderValue),
              ),
            ],
          );
        },
      ),
    );
  }
}
