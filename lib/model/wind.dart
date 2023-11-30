class Wind {
  final double? speed, deg, gust;

  Wind({this.speed, this.deg, this.gust});

  factory Wind.fromJson(Map<String, dynamic> json) {
    return Wind(
      speed: double.parse(json["speed"]),
      deg: json["deg"],
      gust: json["gust"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "speed": this.speed,
      "deg": this.deg,
      "gust": this.gust,
    };
  }

//
}
