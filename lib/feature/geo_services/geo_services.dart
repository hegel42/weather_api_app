import 'dart:math';

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class GeoServices {
  Future<Position> getCurrentLocation() async {
    await Geolocator.checkPermission();
    await Geolocator.requestPermission();
    Geolocator.getLastKnownPosition();
    // Geolocator.
    final position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.lowest,
      forceAndroidLocationManager: true,
    );
    print(position);
    return position;
  }

  double randomValue = -1 + Random().nextDouble() * 2;

  Future getNearbyCitiesFromCoord(Position position) async {
    // final location = await getCurrentLocation();
    try {
      final List<Placemark> currentPlacemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      final List<Placemark> nearbyPlacemarks = await placemarkFromCoordinates(
        position.latitude + randomValue,
        position.longitude + randomValue,
      );

      final List<Placemark> placemarks = [
        currentPlacemarks[0],
        ...nearbyPlacemarks,
      ];

      return placemarks;
    } catch (e) {
      print(e);
    }
  }

  Future getCityFromCoord(Position position) async {
    // final location = await getCurrentLocation();
    try {
      final List<Placemark> currentPlacemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      final List<Placemark> nearbyPlacemarks = await placemarkFromCoordinates(
        position.latitude + randomValue,
        position.longitude + randomValue,
      );

      final List<Placemark> placemarks = [
        currentPlacemarks[0],
        ...nearbyPlacemarks,
      ];

      return placemarks;
    } catch (e) {
      print(e);
    }
  }
}
