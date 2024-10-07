import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_yt/Provider/favourite_provider.dart';

class FavItem extends StatefulWidget {
  const FavItem({super.key});

  @override
  State<FavItem> createState() => _FavItemState();
}

class _FavItemState extends State<FavItem> {
  @override
  Widget build(BuildContext context) {
    final favouriteProvider = Provider.of<FavouriteProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Favourite Item",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: ListView.builder(
          itemCount: favouriteProvider.selectedItems.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("Item ${favouriteProvider.selectedItems[index]}"),
            );
          }),
    );
  }
}
