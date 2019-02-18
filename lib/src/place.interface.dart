import 'package:jam_dart_models/models.dart';
import 'package:rxdart/rxdart.dart';

abstract class PlaceInterface {
  Observable<List<Location>> searchByText(
    String keyword, {
    double latitude,
    double longitude,
    num radius,
  });
}
