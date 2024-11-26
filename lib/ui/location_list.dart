import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tcs_locator/features/locations/bloc/locations_bloc.dart';
import 'package:tcs_locator/features/locations/bloc/locations_event.dart';
import 'package:tcs_locator/features/locations/bloc/locations_state.dart';



// class LocationList extends StatelessWidget {
//   const LocationList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('LocationList Screen')),
//       body: const Center(child: Text('Welcome to the Home Screen!')),
//     );
//   }
// }

// class LocationListPage extends StatefulWidget {
//   const LocationListPage({super.key});

//   @override
//   State<LocationListPage> createState() => _LocationListPageState();
// }

// class _LocationListPageState extends State<LocationListPage> {
//   final LocationBloc locationBloc = LocationBloc();

//   @override
//   void initState() {
//     locationBloc.add(LocationInitialFetchEvent());
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Location Page'),
//         ),
//         body: BlocConsumer<LocationBloc, LocationState>(
//           bloc: locationBloc,
//           listenWhen: (previous, current) => current is LocationActionState,
//           buildWhen: (previous, current) => current is! LocationActionState,
//           listener: (context, state) {},
//           builder: (context, state) {
//             switch (state.runtimeType) {
//               case LocationFetchingErrorState():
//                 return const Center(
//                   child: CircularProgressIndicator(),
//                 );
//               case LocationFetchingSuccessfulState():
//                 final successState = state as LocationFetchingSuccessfulState;
//                 return ListView.builder(
//                   itemCount: successState.locations.length,
//                   itemBuilder: (context, index) {
//                     return Container(
//                       color: Colors.grey.shade200,
//                       padding: const EdgeInsets.all(16),
//                       margin: const EdgeInsets.all(16),
//                       child: const Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text('hello'),
//                           Text('hello')
//                         ],
//                       ),
//                     );
//                   },
//                 );
//               default:
//                 return const SizedBox();
//             }
//           },
//         ));
//   }
// }



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
