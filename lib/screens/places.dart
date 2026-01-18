import 'package:favorite_places/widgets/places_list.dart';
import 'package:flutter/material.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
        title: const Text('Your Places'),
        actions: [
          IconButton(
            onPressed: () {
              // Navigate to add place screen
            },
            icon: const Icon(Icons.add),
          ),
        ],
                                                
      ),
      body: PlacesList(places: [],)
    );
  }
}