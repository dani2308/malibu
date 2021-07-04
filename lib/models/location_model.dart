class Location {
  String id;
  String spot;
  String unit;
  String size;
  String energy;
  String high;
  String low;
  String period;
  String wind;
  String video;

  Location({
    this.id,
    this.spot,
    this.unit,
    this.size,
    this.energy,
    this.high,
    this.low,
    this.period,
    this.wind,
    this.video,
  });

  Location.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    spot = json['spot'];
    unit = json['unit'];
    size = json['size'];
    energy = json['energy'];
    high = json['high'];
    low = json['low'];
    period = json['period'];
    wind = json['wind'];
    video = json['video'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    
    data['id'] = this.id;
    data['spot'] = this.spot;
    data['unit'] = this.unit;
    data['size'] = this.size;
    data['energy'] = this.energy;
    data['high'] = this.high;
    data['low'] = this.low;
    data['period'] = this.period;
    data['wind'] = this.wind;
    data['video'] = this.video;

    return data;
  }
}
