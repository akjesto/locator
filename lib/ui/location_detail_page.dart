import 'package:flutter/material.dart';
import 'package:tcs_locator/features/locations/model/location_model.dart';  // For Google Map


class LocationDetailPage extends StatelessWidget {
  final Location location;

  const LocationDetailPage({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text(location.location),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  _buildTile(label: "Center Name", value: location.location, icon: Icons.business),
                  _buildTile(label: "Location", value: '${location.area} - ${location.geo}', icon: Icons.location_on),
                 _buildTile(label: "Phone", value: location.phone, icon: Icons.phone),
                _buildTile(label: "Email", value: location.email, icon: Icons.email),
                 _buildTile(label: "Address", value: location.address, icon: Icons.location_city)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildTile({required String label, required String value, required IconData icon}) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 8.0),  // Add padding between items
      title: Text(label),
      subtitle: Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),  // The value next to the label
      trailing:  Icon(icon, size: 16.0),  // Optional: Icon on the right (optional for UI)
      onTap: () {
        // Optional: Handle onTap if you need to navigate or show more details
      },
    );
  }

