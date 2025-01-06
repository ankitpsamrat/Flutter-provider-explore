import 'package:explore_provider/favourite/favourite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite App'),
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return Consumer<FavouriteProvider>(
            builder: (context, provider, child) {
              return ListTile(
                title: Text('Item $index'),
                trailing: IconButton(
                  icon: Icon(
                    provider.favouriteItems.contains(index)
                        ? Icons.favorite
                        : Icons.favorite_border,
                  ),
                  onPressed: () {
                    if (provider.favouriteItems.contains(index)) {
                      provider.removeFavouriteItem(index);
                    } else {
                      provider.addFavouriteItem(index);
                    }
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
