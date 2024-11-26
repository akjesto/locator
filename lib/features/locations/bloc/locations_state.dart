
import 'package:tcs_locator/features/locations/model/location_model.dart';

abstract class LocationState {}

abstract class LocationActionState extends LocationState {}

class LocationInitial extends LocationState {}

class LocationFetchingLoadingState extends LocationState {}

class LocationFetchingErrorState extends LocationState {
  final String error;
  LocationFetchingErrorState(this.error);
}

// class LocationFetchingSuccessfulState extends LocationState {
//   final List<LocationModel> locations;
//   LocationFetchingSuccessfulState({
//     required this.locations,
//   });
// }

class LocationFetchingSuccessfulState extends LocationState {
  final List<Location> locations;
  LocationFetchingSuccessfulState({
    required this.locations,
  });
}