class WeatherModal {
  Location location;
  Current current;

  WeatherModal({required this.location, required this.current});

  factory WeatherModal.fromJson(Map  json) {
    return WeatherModal(
      location: Location.fromJson(json['location']),
      current: Current.fromJson(json['current']),
    );
  }

  Map  toJson() {
    return {
      'location': location.toJson(),
      'current': current.toJson(),
    };
  }
}

class Location {
  String name;
  String region;
  String country;
  dynamic lat;
  dynamic lon;
  String tzId;
  dynamic localtimeEpoch;
  String localtime;

  Location({
    required this.name,
    required this.region,
    required this.country,
    required this.lat,
    required this.lon,
    required this.tzId,
    required this.localtimeEpoch,
    required this.localtime,
  });

  factory Location.fromJson(Map  json) {
    return Location(
      name: json['name'],
      region: json['region'],
      country: json['country'],
      lat: json['lat'],
      lon: json['lon'],
      tzId: json['tz_id'],
      localtimeEpoch: json['localtime_epoch'],
      localtime: json['localtime'],
    );
  }

  Map  toJson() {
    return {
      'name': name,
      'region': region,
      'country': country,
      'lat': lat,
      'lon': lon,
      'tz_id': tzId,
      'localtime_epoch': localtimeEpoch,
      'localtime': localtime,
    };
  }
}

class Current {
  dynamic lastUpdatedEpoch;
  String lastUpdated;
  dynamic tempC;
  dynamic tempF;
  dynamic isDay;
  Condition condition;
  dynamic windMph;
  dynamic windKph;
  dynamic windDegree;
  String windDir;
  dynamic pressureMb;
  dynamic pressureIn;
  dynamic precipMm;
  dynamic precipIn;
  dynamic humidity;
  dynamic cloud;
  dynamic feelslikeC;
  dynamic feelslikeF;
  dynamic windchillC;
  dynamic windchillF;
  dynamic heatindexC;
  dynamic heatindexF;
  dynamic dewpodynamicC;
  dynamic dewpodynamicF;
  dynamic visKm;
  dynamic visMiles;
  dynamic uv;
  dynamic gustMph;
  dynamic gustKph;

  Current({
    required this.lastUpdatedEpoch,
    required this.lastUpdated,
    required this.tempC,
    required this.tempF,
    required this.isDay,
    required this.condition,
    required this.windMph,
    required this.windKph,
    required this.windDegree,
    required this.windDir,
    required this.pressureMb,
    required this.pressureIn,
    required this.precipMm,
    required this.precipIn,
    required this.humidity,
    required this.cloud,
    required this.feelslikeC,
    required this.feelslikeF,
    required this.windchillC,
    required this.windchillF,
    required this.heatindexC,
    required this.heatindexF,
    required this.dewpodynamicC,
    required this.dewpodynamicF,
    required this.visKm,
    required this.visMiles,
    required this.uv,
    required this.gustMph,
    required this.gustKph,
  });

  factory Current.fromJson(Map  json) {
    return Current(
      lastUpdatedEpoch: json['last_updated_epoch'],
      lastUpdated: json['last_updated'],
      tempC: json['temp_c'],
      tempF: json['temp_f'],
      isDay: json['is_day'],
      condition: Condition.fromJson(json['condition']),
      windMph: json['wind_mph'],
      windKph: json['wind_kph'],
      windDegree: json['wind_degree'],
      windDir: json['wind_dir'],
      pressureMb: json['pressure_mb'],
      pressureIn: json['pressure_in'],
      precipMm: json['precip_mm'],
      precipIn: json['precip_in'],
      humidity: json['humidity'],
      cloud: json['cloud'],
      feelslikeC: json['feelslike_c'],
      feelslikeF: json['feelslike_f'],
      windchillC: json['windchill_c'],
      windchillF: json['windchill_f'],
      heatindexC: json['heatindex_c'],
      heatindexF: json['heatindex_f'],
      dewpodynamicC: json['dewpodynamic_c'],
      dewpodynamicF: json['dewpodynamic_f'],
      visKm: json['vis_km'],
      visMiles: json['vis_miles'],
      uv: json['uv'],
      gustMph: json['gust_mph'],
      gustKph: json['gust_kph'],
    );
  }

  Map  toJson() {
    return {
      'last_updated_epoch': lastUpdatedEpoch,
      'last_updated': lastUpdated,
      'temp_c': tempC,
      'temp_f': tempF,
      'is_day': isDay,
      'condition': condition.toJson(),
      'wind_mph': windMph,
      'wind_kph': windKph,
      'wind_degree': windDegree,
      'wind_dir': windDir,
      'pressure_mb': pressureMb,
      'pressure_in': pressureIn,
      'precip_mm': precipMm,
      'precip_in': precipIn,
      'humidity': humidity,
      'cloud': cloud,
      'feelslike_c': feelslikeC,
      'feelslike_f': feelslikeF,
      'windchill_c': windchillC,
      'windchill_f': windchillF,
      'heatindex_c': heatindexC,
      'heatindex_f': heatindexF,
      'dewpodynamic_c': dewpodynamicC,
      'dewpodynamic_f': dewpodynamicF,
      'vis_km': visKm,
      'vis_miles': visMiles,
      'uv': uv,
      'gust_mph': gustMph,
      'gust_kph': gustKph,
    };
  }
}

class Condition {
  String text;
  String icon;
  dynamic code;

  Condition({required this.text, required this.icon, required this.code});

  factory Condition.fromJson(Map  json) {
    return Condition(
      text: json['text'],
      icon: json['icon'],
      code: json['code'],
    );
  }

  Map  toJson() {
    return {
      'text': text,
      'icon': icon,
      'code': code,
    };
  }
}
