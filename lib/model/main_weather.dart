class MainWeather {
  final double? temp,
      feels_lik,
      temp_min,
      temp_max,
      pressure,
      humiditym,
      sea_level,
      grnd_level;

  MainWeather(
      {this.temp,
      this.feels_lik,
      this.temp_min,
      this.temp_max,
      this.pressure,
      this.humiditym,
      this.sea_level,
      this.grnd_level});

  factory MainWeather.fromJson(Map<String, dynamic> json) {
    return MainWeather(
      temp: double.parse(json["temp"]),
      feels_lik: json["feels_lik"],
      temp_min: json["temp_min"],
      temp_max: json["temp_max"],
      pressure: json["pressure"],
      humiditym: json["humiditym"],
      sea_level: json["sea_level"],
      grnd_level: json["grnd_level"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "temp": this.temp,
      "feels_lik": this.feels_lik,
      "temp_min": this.temp_min,
      "temp_max": this.temp_max,
      "pressure": this.pressure,
      "humiditym": this.humiditym,
      "sea_level": this.sea_level,
      "grnd_level": this.grnd_level,
    };
  }

//
}
