import 'package:geolocator/geolocator.dart';

class LocationService {
  Future<String> getCountry() async {
    Position position = await Geolocator.getCurrentPosition();
    // For demo: Return hardcoded country
    return 'Germany';
  }
}
