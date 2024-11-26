import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tcs_locator/features/locations/bloc/locations_bloc.dart';
import 'package:tcs_locator/features/locations/bloc/locations_event.dart';
import 'package:tcs_locator/features/locations/bloc/locations_state.dart';
import 'package:tcs_locator/ui/location_detail_page.dart';

class LocationListView extends StatelessWidget {
  const LocationListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: false,
        title: Transform(transform: Matrix4.translationValues(20.0, 0.0, 0.0),
        child: const Text('TCS Locator',style: TextStyle(color: Colors.white)),
        ),
        actions: [
        Image.asset('assets/images/logo.png'),
  ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search Locations',
                hintText: 'Enter location name...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
              ),
            ),
            ),
      ),
      ),
      body: BlocProvider(
        create: (context) => LocationBloc()..add(LocationInitialFetchEvent()),
        child: BlocBuilder<LocationBloc, LocationState>(
          builder: (context, state) {
            if (state is LocationFetchingLoadingState) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is LocationFetchingErrorState) {
              return Center(child: Text(state.error));
            } else if (state is LocationFetchingSuccessfulState) {
              return ListView.builder(
                itemCount: state.locations.length,
                itemBuilder: (context, index) {
                  final location = state.locations[index];
                  return ListTile(
                    title: Text(location.location),
                    subtitle: Text('${location.area} - ${location.geo}'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Handle item tap if needed
                          Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LocationDetailPage(location: location)
                        ),
                      );
                    },
                  );
                },
              );
            } else {
              return const Center(child: Text('No data available.'));
            }
          },
        ),
      ),
    );
  }
}
