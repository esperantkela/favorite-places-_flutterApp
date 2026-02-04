import 'dart:io';

import 'package:favorite_places/models/place.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:riverpod/riverpod.dart';

class UserPlacesNotifier extends StateNotifier <List<Place>> {
  UserPlacesNotifier() : super([]);

  void addPlace(String title, File imagePath) {
    final newPlace = Place(
      title: title,
      imagePath: imagePath,
    );
    state = [...state, newPlace];

  }
  
} 

final userPlacesProvider =
    StateNotifierProvider<UserPlacesNotifier, List<Place>>(
        (ref) => UserPlacesNotifier());