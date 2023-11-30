class Cloude {
 final int ? all ;

  Cloude({
    this.all
});

  factory Cloude.fromJson(Map<String, dynamic> json) {
    return Cloude(
      all: int.parse(json["all"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "all": this.all,
    };
  }

//
}