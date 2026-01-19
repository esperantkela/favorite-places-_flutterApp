import 'package:favorite_places/models/place.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:riverpod/riverpod.dart';

class UserPlacesNotifier extends StateNotifier <List<Place>> {
  UserPlacesNotifier() : super([]);

  void addPlace(Place place) {
    state = [...state, place];
  }
  
} 

final userPlacesProvider =
    StateNotifierProvider<UserPlacesNotifier, List<Place>>(
        (ref) => UserPlacesNotifier());