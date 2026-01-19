import 'package:favorite_places/models/place.dart';
import 'package:flutter/material.dart';

class PlacesDetailScreen extends StatelessWidget {
  const PlacesDetailScreen({super.key, required this.place});

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(place.title,  style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),),
      ),
      body: Center(
        child: Text(
          'Details of the selected place will be shown here.',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}