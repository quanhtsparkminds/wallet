// ignore_for_file: close_sinks

import 'dart:io';

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class LocationConfig1 {
  static Future initLocation() async {
    try {
      Position currentLocation = await getGeoLocationPosition();
      await getAddressFromLatLong(currentLocation);
    } catch (e) {
      rethrow;
    }
  }

  static Future<Position> getGeoLocationPosition() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      print("You can use Location now.");
      if (permission == LocationPermission.denied) {
        print('Location permissions are denied');
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      print(
          'Location permissions are permanently denied, we cannot request permissions.');
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    try {
      await Geolocator.getCurrentPosition(
          timeLimit: Duration(seconds: 10),
          desiredAccuracy: LocationAccuracy.high);
    } catch (e) {}
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  static Future<void> getAddressFromLatLong(Position position) async {
    try {
      List<Placemark> placemarks =
          await placemarkFromCoordinates(position.latitude, position.longitude);
      Placemark place = placemarks[0];
      String address =
          '${place.street}, ${place.subAdministrativeArea}, ${place.administrativeArea}, ${place.country}';
      print("address_______" + address);
      print(position.latitude);
      print(position.longitude);
    } catch (error) {
      throw error;
    }
  }

  static Future<bool> checkLocationPermission() async {
    try {
      if (Platform.isIOS) {
        initLocation();
        // await checkLocationPermission();
      }
      LocationPermission permission;
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }
      if (permission == LocationPermission.deniedForever) {
        return false;
      }
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }

  static Future<Position?> getLocationPosition() async {
    try {
      final position = await Geolocator.getCurrentPosition(
          timeLimit: const Duration(seconds: 3),
          desiredAccuracy: LocationAccuracy.high);
      return position;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
//, ${place.subLocality}, ${place.locality}, ${place.subAdministrativeArea}
