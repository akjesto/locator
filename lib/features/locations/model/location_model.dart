class Geometry {
  final double lat;
  final double lng;

  Geometry({required this.lat, required this.lng});

  factory Geometry.fromJson(Map<String, dynamic> json) {
    return Geometry(
      lat: json['lat'] ?? 0.0,
      lng: json['lng'] ?? 0.0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'lat': lat,
      'lng': lng,
    };
  }
}


class Location {
  final String area;
  final String geo;
  final String location;
  final String address;
  final String phone;
  final String email;
  final Geometry geometry;
  final List<String> officeType;
  final List<String> additionalInfo;
  final String id;

  Location({
    required this.area,
    required this.geo,
    required this.location,
    required this.address,
    required this.phone,
    required this.email,
    required this.geometry,
    required this.officeType,
    required this.additionalInfo,
    required this.id,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      area: json['area']??'',
      geo: json['geo']??'',
      location: json['location']??'',
      address: json['address']??'',
      phone: json['phone']??'',
      email: json['email']??'',
      geometry: Geometry.fromJson(json['geometry']),
      officeType: List<String>.from(json['officeType']),
      additionalInfo: List<String>.from(json['additionalInfo']),
      id: json['id']??'',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'area': area,
      'geo': geo,
      'location': location,
      'address': address,
      'phone': phone,
      'email': email,
      'geometry': geometry.toJson(),
      'officeType': officeType,
      'additionalInfo': additionalInfo,
      'id': id,
    };
  }
}

class Constants {
  final String getDirection;
  final String findOutMore;
  final String contactUs;
  final String mailUs;
  final String defaultDropdownValue;

  Constants({
    required this.getDirection,
    required this.findOutMore,
    required this.contactUs,
    required this.mailUs,
    required this.defaultDropdownValue,
  });

  factory Constants.fromJson(Map<String, dynamic> json) {
    return Constants(
      getDirection: json['getDirection'],
      findOutMore: json['findOutMore'],
      contactUs: json['contactUs'],
      mailUs: json['mailUs'],
      defaultDropdownValue: json['defaultDropdownValue'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'getDirection': getDirection,
      'findOutMore': findOutMore,
      'contactUs': contactUs,
      'mailUs': mailUs,
      'defaultDropdownValue': defaultDropdownValue,
    };
  }
}


class Bounds {
  final double south;
  final double west;
  final double north;
  final double east;

  Bounds({
    required this.south,
    required this.west,
    required this.north,
    required this.east,
  });

  factory Bounds.fromJson(Map<String, dynamic> json) {
    return Bounds(
      south: json['south'],
      west: json['west'],
      north: json['north'],
      east: json['east'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'south': south,
      'west': west,
      'north': north,
      'east': east,
    };
  }
}


class ApiResponse {
  // final Constants constants;
  // final List<Bounds> bounds;
  final List<Location> locations;

  ApiResponse({
   // required this.constants,
    //required this.bounds,
    required this.locations,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
    //  constants: Constants.fromJson(json['constants']),
     // bounds: (json['bounds'] as List)
    //      .map((item) => Bounds.fromJson(item))
      //    .toList(),
      locations: (json['locations'] as List)
          .map((item) => Location.fromJson(item))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      //'constants': constants.toJson(),
     // 'bounds': bounds.map((item) => item.toJson()).toList(),
      'locations': locations.map((item) => item.toJson()).toList(),
    };
  }
}

