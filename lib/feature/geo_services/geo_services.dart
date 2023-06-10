import 'dart:math';

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class GeoServices {
  Future<Position> getCurrentLocation() async {
    await Geolocator.checkPermission();
    await Geolocator.requestPermission();
    final position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.lowest,
      forceAndroidLocationManager: true,
    );
    print(position);
    return position;
  }

  double randomValue = -1 + Random().nextDouble() * 2;

  Future getAddressFromCoord() async {
    final location = await getCurrentLocation();
    try {
      final List<Placemark> currentPlacemarks = await placemarkFromCoordinates(
        location.latitude,
        location.longitude,
      );

      final List<Placemark> nearbyPlacemarks = await placemarkFromCoordinates(
        location.latitude + randomValue,
        location.longitude + randomValue,
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
