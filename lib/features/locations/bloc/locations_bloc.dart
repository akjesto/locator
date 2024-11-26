


import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tcs_locator/features/locations/bloc/locations_event.dart';
import 'package:tcs_locator/features/locations/bloc/locations_state.dart';
import 'package:tcs_locator/features/locations/model/location_model.dart';
import 'package:tcs_locator/features/locations/repos/location_repo.dart';


class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(LocationInitial()) {
    on<LocationInitialFetchEvent>(locationInitialFetchEvent);
  }

  FutureOr<void> locationInitialFetchEvent(
      LocationInitialFetchEvent event, Emitter<LocationState> emit) async {
    emit(LocationFetchingLoadingState());
    final apiResponse = await LocationRepo.fetchLocations();
          
     
         // log('data*******: $locations');

    emit(LocationFetchingSuccessfulState(locations: apiResponse.locations));
  }


}