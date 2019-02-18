import 'package:jam_dart_models/models.dart';
import 'package:rxdart/rxdart.dart';

abstract class LocationInterface {
  Observable<Location> getCurrentLocation();
}
