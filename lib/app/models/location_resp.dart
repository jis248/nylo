class LocationResp {
  List<LocationRespLocationAvailability>? locationAvailability;

  LocationResp({
    this.locationAvailability,
  });

  LocationResp.fromJson(Map<String, dynamic> json) {
    if (json['locationAvailability'] != null) {
      locationAvailability = (json['locationAvailability'] as List)
          .map((e) => LocationRespLocationAvailability.fromJson(e))
          .toList();
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'locationAvailability':
          locationAvailability?.map((e) => e.toJson()).toList(),
    };
  }
}

class LocationRespLocationAvailability {
  String? locationName;
  String? locationUrl;
  String? address;
  String? address1;
  String? city;
  String? state;
  String? zipCode;
  String? locationOnAMap;
  String? facilityType;
  String? appointmentNumber;
  String? diagnosticNumber;
  List<LocationRespLocationAvailabilityOpenTime>? openTime;
  int? isFilter;
  bool? isSheduleButtonVisible;
  String? sheduleUrl;
  double? latitude;
  double? longitude;

  LocationRespLocationAvailability({
    this.locationName,
    this.locationUrl,
    this.address,
    this.address1,
    this.city,
    this.state,
    this.zipCode,
    this.locationOnAMap,
    this.facilityType,
    this.appointmentNumber,
    this.diagnosticNumber,
    this.openTime,
    this.isFilter,
    this.isSheduleButtonVisible,
    this.sheduleUrl,
    this.latitude,
    this.longitude,
  });

  LocationRespLocationAvailability.fromJson(Map<String, dynamic> json) {
    locationName = json['locationName']?.toString();
    locationUrl = json['locationUrl']?.toString();
    address = json['address']?.toString();
    address1 = json['address_1']?.toString();
    city = json['city']?.toString();
    state = json['state']?.toString();
    zipCode = json['zipCode']?.toString();
    locationOnAMap = json['location_on_a_map']?.toString();
    facilityType = json['facility_type']?.toString();
    appointmentNumber = json['appointmentNumber']?.toString();
    diagnosticNumber = json['diagnosticNumber']?.toString();
    if (json['openTime'] != null) {
      openTime = (json['openTime'] as List)
          .map((e) => LocationRespLocationAvailabilityOpenTime.fromJson(e))
          .toList();
    }
    isFilter = json['isFilter'];
    isSheduleButtonVisible = json['isSheduleButtonVisible'];
    sheduleUrl = json['sheduleUrl']?.toString();
    latitude = json['latitude']?.toDouble();
    longitude = json['longitude']?.toDouble();
  }

  Map<String, dynamic> toJson() {
    return {
      'locationName': locationName,
      'locationUrl': locationUrl,
      'address': address,
      'address_1': address1,
      'city': city,
      'state': state,
      'zipCode': zipCode,
      'location_on_a_map': locationOnAMap,
      'facility_type': facilityType,
      'appointmentNumber': appointmentNumber,
      'diagnosticNumber': diagnosticNumber,
      'openTime': openTime?.map((e) => e.toJson()).toList(),
      'isFilter': isFilter,
      'isSheduleButtonVisible': isSheduleButtonVisible,
      'sheduleUrl': sheduleUrl,
      'latitude': latitude,
      'longitude': longitude,
    };
  }
}

class LocationRespLocationAvailabilityOpenTime {
  String? days;
  String? hours;

  LocationRespLocationAvailabilityOpenTime({
    this.days,
    this.hours,
  });

  LocationRespLocationAvailabilityOpenTime.fromJson(Map<String, dynamic> json) {
    days = json['days']?.toString();
    hours = json['hours']?.toString();
  }

  Map<String, dynamic> toJson() {
    return {
      'days': days,
      'hours': hours,
    };
  }
}
