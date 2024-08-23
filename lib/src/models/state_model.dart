import 'package:csc_intl_package/src/models/city_model.dart';

class StateModel {
  int? id;
  String? name;
  String? stateCode;
  String? latitude;
  String? longitude;
  Null? type;
  List<CityModel>? cities;

  StateModel(
      {this.id,
      this.name,
      this.stateCode,
      this.latitude,
      this.longitude,
      this.type,
      this.cities});

  StateModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    stateCode = json['state_code'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    type = json['type'];
    if (json['cities'] != null) {
      cities = <CityModel>[];
      json['cities'].forEach((v) {
        cities!.add(new CityModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['state_code'] = this.stateCode;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['type'] = this.type;
    if (this.cities != null) {
      data['cities'] = this.cities!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}