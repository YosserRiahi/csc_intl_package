class TimezonesModel {
  String? zoneName;
  int? gmtOffset;
  String? gmtOffsetName;
  String? abbreviation;
  String? tzName;

  TimezonesModel(
      {this.zoneName,
      this.gmtOffset,
      this.gmtOffsetName,
      this.abbreviation,
      this.tzName});

  TimezonesModel.fromJson(Map<String, dynamic> json) {
    zoneName = json['zoneName'];
    gmtOffset = json['gmtOffset'];
    gmtOffsetName = json['gmtOffsetName'];
    abbreviation = json['abbreviation'];
    tzName = json['tzName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['zoneName'] = this.zoneName;
    data['gmtOffset'] = this.gmtOffset;
    data['gmtOffsetName'] = this.gmtOffsetName;
    data['abbreviation'] = this.abbreviation;
    data['tzName'] = this.tzName;
    return data;
  }
}
