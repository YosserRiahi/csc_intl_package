import 'package:csc_intl_package/src/models/state_model.dart';
import 'package:csc_intl_package/src/models/timezones_model.dart';

class CountryModel {
  int? id;
  String? name;
  String? iso3;
  String? iso2;
  String? numericCode;
  String? phoneCode;
  String? capital;
  String? currency;
  String? currencyName;
  String? currencySymbol;
  String? tld;
  String? native;
  String? region;
  String? regionId;
  String? subregion;
  String? subregionId;
  String? nationality;
  List<TimezonesModel>? timezones;
  TimezonesModel? translations;
  String? latitude;
  String? longitude;
  String? emoji;
  String? emojiU;
  List<StateModel>? states;

  CountryModel(
      {this.id,
      this.name,
      this.iso3,
      this.iso2,
      this.numericCode,
      this.phoneCode,
      this.capital,
      this.currency,
      this.currencyName,
      this.currencySymbol,
      this.tld,
      this.native,
      this.region,
      this.regionId,
      this.subregion,
      this.subregionId,
      this.nationality,
      this.timezones,
      this.translations,
      this.latitude,
      this.longitude,
      this.emoji,
      this.emojiU,
      this.states});

  CountryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    iso3 = json['iso3'];
    iso2 = json['iso2'];
    numericCode = json['numeric_code'];
    phoneCode = json['phone_code'];
    capital = json['capital'];
    currency = json['currency'];
    currencyName = json['currency_name'];
    currencySymbol = json['currency_symbol'];
    tld = json['tld'];
    native = json['native'];
    region = json['region'];
    regionId = json['region_id'];
    subregion = json['subregion'];
    subregionId = json['subregion_id'];
    nationality = json['nationality'];
    if (json['timezones'] != null) {
      timezones = <TimezonesModel>[];
      json['timezones'].forEach((v) {
        timezones!.add(new TimezonesModel.fromJson(v));
      });
    }
    translations = json['translations'] != null
        ? new TimezonesModel.fromJson(json['translations'])
        : null;
    latitude = json['latitude'];
    longitude = json['longitude'];
    emoji = json['emoji'];
    emojiU = json['emojiU'];
    if (json['states'] != null) {
      states = <StateModel>[];
      json['states'].forEach((v) {
        states!.add(new StateModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['iso3'] = this.iso3;
    data['iso2'] = this.iso2;
    data['numeric_code'] = this.numericCode;
    data['phone_code'] = this.phoneCode;
    data['capital'] = this.capital;
    data['currency'] = this.currency;
    data['currency_name'] = this.currencyName;
    data['currency_symbol'] = this.currencySymbol;
    data['tld'] = this.tld;
    data['native'] = this.native;
    data['region'] = this.region;
    data['region_id'] = this.regionId;
    data['subregion'] = this.subregion;
    data['subregion_id'] = this.subregionId;
    data['nationality'] = this.nationality;
    if (this.timezones != null) {
      data['timezones'] = this.timezones!.map((v) => v.toJson()).toList();
    }
    if (this.translations != null) {
      data['translations'] = this.translations!.toJson();
    }
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['emoji'] = this.emoji;
    data['emojiU'] = this.emojiU;
    if (this.states != null) {
      data['states'] = this.states!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
