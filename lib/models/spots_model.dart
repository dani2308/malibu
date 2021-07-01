class Spot {
  String spot;
  String unit;
  String size;

  Spot({this.spot, this.unit, this.size});

  Spot.fromJson(Map<String, dynamic> json) {
    spot = json['spot'];
    unit = json['unit'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['spot'] = this.spot;
    data['unit'] = this.unit;
    data['size'] = this.size;

    return data;
  }
}
