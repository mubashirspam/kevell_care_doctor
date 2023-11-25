class BmiResponse {
  double? bmi;
  double? height;
  double? weight;
  double? bodyFat;
  double? muscle;
  double? waterMass;
  double? visceralFat;
  int? metaAge;
  int? bmr;
  double? leanMass;
  int? impedance;
  String? status;

  BmiResponse({
    required this.bmi,
    required this.height,
    required this.weight,
    required this.bodyFat,
    required this.muscle,
    required this.waterMass,
    required this.visceralFat,
    required this.metaAge,
    required this.bmr,
    required this.leanMass,
    required this.impedance,
    required this.status,
  });

  factory BmiResponse.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      throw ArgumentError("Input JSON cannot be null");
    }

    return BmiResponse(
      bmi: json['bmi'] != null ? double.parse(json['bmi'].toString()) : null,
      height: json['height'] != null ? double.parse(json['height'].toString()) : null,
      weight: json['weight'] != null ? double.parse(json['weight'].toString()) : null,
      bodyFat: json['body_fat'] != null ? double.parse(json['body_fat'].toString()) : null,
      muscle: json['muscle'] != null ? double.parse(json['muscle'].toString()) : null,
      waterMass: json['water_mass'] != null ? double.parse(json['water_mass'].toString()) : null,
      visceralFat: json['visceral_fat'] != null ? double.parse(json['visceral_fat'].toString()) : null,
      metaAge: json['meta_age'] != null ? int.parse(json['meta_age'].toString()) : null,
      bmr: json['bmr'] != null ? int.parse(json['bmr'].toString()) : null,
      leanMass: json['lean_mass'] != null ? double.parse(json['lean_mass'].toString()) : null,
      impedance: json['impedance'] != null ? int.parse(json['impedance'].toString()) : null,
      status: json['status']?.toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'bmi': bmi,
      'height': height,
      'weight': weight,
      'body_fat': bodyFat,
      'muscle': muscle,
      'water_mass': waterMass,
      'visceral_fat': visceralFat,
      'meta_age': metaAge,
      'bmr': bmr,
      'lean_mass': leanMass,
      'impedance': impedance,
      'status': status,
    };
  }
}
