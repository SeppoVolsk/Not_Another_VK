class Donut {
  bool? isDonut;

  Donut({this.isDonut});

  factory Donut.fromJson(Map<String, dynamic> json) => Donut(
        isDonut: json['is_donut'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'is_donut': isDonut,
      };
}
