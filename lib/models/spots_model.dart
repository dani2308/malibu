class Spot {
  String spot;
  String unit;
  String size;
  String energy;
  String high;
  String low;
  String period;
  String wind;

  Spot(
      {this.spot,
      this.unit,
      this.size,
      this.energy,
      this.high,
      this.low,
      this.period,
      this.wind}
    );

  Spot.fromJson(Map<String, dynamic> json) {
    spot = json['spot'];
    unit = json['unit'];
    size = json['size'];
    energy = json['energy'];
    high = json['high'];
    low = json['low'];
    period = json['period'];
    wind = json['wind'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['spot'] = this.spot;
    data['unit'] = this.unit;
    data['size'] = this.size;
    data['energy'] = this.energy;
    data['high'] = this.high;
    data['low'] = this.low;
    data['period'] = this.period;
    data['wind'] = this.wind;

    return data;
  }
}
