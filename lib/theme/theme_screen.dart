import 'package:explore_provider/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme App'),
      ),
      body: Consumer<ThemeProvider>(
        builder: (context, provider, child) {
          return SwitchListTile(
            title: const Text('Dark Theme'),
            value: provider.themeData == ThemeData.dark(),
            onChanged: (value) {
              if (value) {
                provider.setThemeData(ThemeData.dark());
              } else {
                provider.setThemeData(ThemeData.light());
              }
            },
          );
        },
      ),
    );
  }
}
