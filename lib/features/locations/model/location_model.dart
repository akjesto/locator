// import 'dart:convert';

// LocationModel locationModelFromMap(String str) => LocationModel.fromMap(json.decode(str));

// String locationModelToMap(LocationModel data) => json.encode(data.toMap());

// class LocationModel {
//     Constants constants;
//     List<Bound> bounds;
//     List<Location> locations;

//     LocationModel({
//         required this.constants,
//         required this.bounds,
//         required this.locations,
//     });

//     factory LocationModel.fromMap(Map<String, dynamic> json) => LocationModel(
//         constants: Constants.fromMap(json["constants"]),
//         bounds: List<Bound>.from(json["bounds"].map((x) => Bound.fromMap(x))),
//         locations: List<Location>.from(json["locations"].map((x) => Location.fromMap(x))),
//     );

//     Map<String, dynamic> toMap() => {
//         "constants": constants.toMap(),
//         "bounds": List<dynamic>.from(bounds.map((x) => x.toMap())),
//         "locations": List<dynamic>.from(locations.map((x) => x.toMap())),
//     };
// }

// class Bound {
//     int breakPoint;
//     int zoom;
//     Bounds bounds;
//     String? id;

//     Bound({
//         required this.breakPoint,
//         required this.zoom,
//         required this.bounds,
//         this.id,
//     });

//     factory Bound.fromMap(Map<String, dynamic> json) => Bound(
//         breakPoint: json["breakPoint"],
//         zoom: json["zoom"],
//         bounds: Bounds.fromMap(json["bounds"]),
//         id: json["id"],
//     );

//     Map<String, dynamic> toMap() => {
//         "breakPoint": breakPoint,
//         "zoom": zoom,
//         "bounds": bounds.toMap(),
//         "id": id,
//     };
// }

// class Bounds {
//     double south;
//     double west;
//     double north;
//     double east;

//     Bounds({
//         required this.south,
//         required this.west,
//         required this.north,
//         required this.east,
//     });

//     factory Bounds.fromMap(Map<String, dynamic> json) => Bounds(
//         south: json["south"]?.toDouble(),
//         west: json["west"]?.toDouble(),
//         north: json["north"]?.toDouble(),
//         east: json["east"]?.toDouble(),
//     );

//     Map<String, dynamic> toMap() => {
//         "south": south,
//         "west": west,
//         "north": north,
//         "east": east,
//     };
// }

// class Constants {
//     String getDirection;
//     FindOutMore findOutMore;
//     String contactUs;
//     String mailUs;
//     String defaultDropdownValue;

//     Constants({
//         required this.getDirection,
//         required this.findOutMore,
//         required this.contactUs,
//         required this.mailUs,
//         required this.defaultDropdownValue,
//     });

//     factory Constants.fromMap(Map<String, dynamic> json) => Constants(
//         getDirection: json["getDirection"],
//         findOutMore: findOutMoreValues.map[json["findOutMore"]]!,
//         contactUs: json["contactUs"],
//         mailUs: json["mailUs"],
//         defaultDropdownValue: json["defaultDropdownValue"],
//     );

//     Map<String, dynamic> toMap() => {
//         "getDirection": getDirection,
//         "findOutMore": findOutMoreValues.reverse[findOutMore],
//         "contactUs": contactUs,
//         "mailUs": mailUs,
//         "defaultDropdownValue": defaultDropdownValue,
//     };
// }

// enum FindOutMore {
//     ESPAOL_WEBSITE,
//     WEBSITE
// }

// final findOutMoreValues = EnumValues({
//     "Español website": FindOutMore.ESPAOL_WEBSITE,
//     "Website": FindOutMore.WEBSITE
// });

// class Location {
//     Area area;
//     String geo;
//     String location;
//     List<String> officeType;
//     List<dynamic> additionalInfo;
//     String address;
//     String phone;
//     Geometry geometry;
//     Email? email;
//     List<dynamic> keywords;
//     List<Website>? websites;
//     String id;
//     String? fax;

//     Location({
//         required this.area,
//         required this.geo,
//         required this.location,
//         required this.officeType,
//         required this.additionalInfo,
//         required this.address,
//         required this.phone,
//         required this.geometry,
//         this.email,
//         required this.keywords,
//         this.websites,
//         required this.id,
//         this.fax,
//     });

//     factory Location.fromMap(Map<String, dynamic> json) => Location(
//         area: areaValues.map[json["area"]]!,
//         geo: json["geo"],
//         location: json["location"],
//         officeType: List<String>.from(json["officeType"].map((x) => x)),
//         additionalInfo: List<dynamic>.from(json["additionalInfo"].map((x) => x)),
//         address: json["address"],
//         phone: json["phone"],
//         geometry: Geometry.fromMap(json["geometry"]),
//         email: emailValues.map[json["email"]]!,
//         keywords: List<dynamic>.from(json["keywords"].map((x) => x)),
//         websites: json["websites"] == null ? [] : List<Website>.from(json["websites"]!.map((x) => Website.fromMap(x))),
//         id: json["id"],
//         fax: json["fax"],
//     );

//     Map<String, dynamic> toMap() => {
//         "area": areaValues.reverse[area],
//         "geo": geo,
//         "location": location,
//         "officeType": List<dynamic>.from(officeType.map((x) => x)),
//         "additionalInfo": List<dynamic>.from(additionalInfo.map((x) => x)),
//         "address": address,
//         "phone": phone,
//         "geometry": geometry.toMap(),
//         "email": emailValues.reverse[email],
//         "keywords": List<dynamic>.from(keywords.map((x) => x)),
//         "websites": websites == null ? [] : List<dynamic>.from(websites!.map((x) => x.toMap())),
//         "id": id,
//         "fax": fax,
//     };
// }

// enum Area {
//     ASIA_PACIFIC,
//     AUSTRALIA_NEW_ZEALAND,
//     EUROPE,
//     INDIA,
//     JAPAN,
//     LATIN_AMERICA,
//     MIDDLE_EAST_AFRICA,
//     NORTH_AMERICA,
//     UK_IRELAND
// }

// final areaValues = EnumValues({
//     "Asia Pacific": Area.ASIA_PACIFIC,
//     "Australia & New Zealand": Area.AUSTRALIA_NEW_ZEALAND,
//     "Europe": Area.EUROPE,
//     "India": Area.INDIA,
//     "Japan": Area.JAPAN,
//     "Latin America": Area.LATIN_AMERICA,
//     "Middle East & Africa": Area.MIDDLE_EAST_AFRICA,
//     "North America": Area.NORTH_AMERICA,
//     "UK & Ireland": Area.UK_IRELAND
// });

// enum Email {
//     ANZ_MARKETING_TCS_COM,
//     APAC_MARKETING_TCS_COM,
//     ECUADOR_ADMINISTRATIVOGRP_TCS_COM,
//     EMAIL_MEA_MARKETING_TCS_COM,
//     EUROPE_MARKETING_TCS_COM,
//     INDIA_MARKETING_TCS_COM,
//     JPSM_KOHO_TCS_COM,
//     LATAM_MARKETING_TCS_COM,
//     MEA_MARKETING_TCS_COM,
//     NA_MARKETING_TCS_COM
// }

// final emailValues = EnumValues({
//     "anz.marketing@tcs.com": Email.ANZ_MARKETING_TCS_COM,
//     "apac.marketing@tcs.com": Email.APAC_MARKETING_TCS_COM,
//     "ecuador.administrativogrp@tcs.com": Email.ECUADOR_ADMINISTRATIVOGRP_TCS_COM,
//     "mea.marketing@tcs.com ": Email.EMAIL_MEA_MARKETING_TCS_COM,
//     "europe.marketing@tcs.com": Email.EUROPE_MARKETING_TCS_COM,
//     "india.marketing@tcs.com": Email.INDIA_MARKETING_TCS_COM,
//     "jpsm.koho@tcs.com": Email.JPSM_KOHO_TCS_COM,
//     "latam.marketing@tcs.com": Email.LATAM_MARKETING_TCS_COM,
//     "mea.marketing@tcs.com": Email.MEA_MARKETING_TCS_COM,
//     "na.marketing@tcs.com": Email.NA_MARKETING_TCS_COM
// });

// class Geometry {
//     double lat;
//     double lng;

//     Geometry({
//         required this.lat,
//         required this.lng,
//     });

//     factory Geometry.fromMap(Map<String, dynamic> json) => Geometry(
//         lat: json["lat"]?.toDouble(),
//         lng: json["lng"]?.toDouble(),
//     );

//     Map<String, dynamic> toMap() => {
//         "lat": lat,
//         "lng": lng,
//     };
// }

// class Website {
//     FindOutMore? name;
//     String url;

//     Website({
//         this.name,
//         required this.url,
//     });

//     factory Website.fromMap(Map<String, dynamic> json) => Website(
//         name: findOutMoreValues.map[json["name"]]!,
//         url: json["url"],
//     );

//     Map<String, dynamic> toMap() => {
//         "name": findOutMoreValues.reverse[name],
//         "url": url,
//     };
// }

// class EnumValues<T> {
//     Map<String, T> map;
//     late Map<T, String> reverseMap;

//     EnumValues(this.map);

//     Map<T, String> get reverse {
//             reverseMap = map.map((k, v) => MapEntry(v, k));
//             return reverseMap;
//     }
// }


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

