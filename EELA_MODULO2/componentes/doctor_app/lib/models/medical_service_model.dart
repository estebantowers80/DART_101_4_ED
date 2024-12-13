//flutter (13662): **************REPUESTA SERVICIO ******************
//flutter (13662): [{id: 1, icon: assets/svg/diagnostic.svg, name: Diagnostic, color: 7166F9},
//                  {id: 2, icon: assets/svg/dental.svg, name: Dental, color: FF7854},
//                  {id: 3, icon: assets/svg/surgeon.svg, name: Surgeon, color: FEA725},
//                  {id: 4, icon: assets/svg/medicines.svg, name: Medicines, color: 68EEBE}]
import 'dart:convert';
MedicalServiceModel medicalServiceModelFromJson(String str) => MedicalServiceModel.fromJson(json.decode(str));
String medicalServiceModelToJson(MedicalServiceModel data) => json.encode(data.toJson());

//List<MedicalServiceModel> medicalServiceModelFromJson(String str) => List<MedicalServiceModel>.from(json.decode(str).map((x) => MedicalServiceModel.fromJson(x)));
//String medicalServiceModelToJson(List<MedicalServiceModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


class MedicalServiceModel {
    final int id;
    final String icon;
    final String name;
    final String color;

    MedicalServiceModel({
        required this.id,
        required this.icon,
        required this.name,
        required this.color,
    });

    MedicalServiceModel copyWith({
        int? id,
        String? icon,
        String? name,
        String? color,
    }) => 
        MedicalServiceModel(
            id: id ?? this.id,
            icon: icon ?? this.icon,
            name: name ?? this.name,
            color: color ?? this.color,
        );

    factory MedicalServiceModel.fromJson(Map<String, dynamic> json) => MedicalServiceModel(
        id: json["id"] ?? 0,
        icon: json["icon"] ?? "",
        name: json["name"] ?? "NO ENCONTRADO", 
        color: json["color"] ?? "0XFFFFFFFF",
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "icon": icon,
        "name": name,
        "color": color,
    };
}





/*class MedicalServiceModel {
  final int id;
  final String icon;
  final String name;
  final String color;

  MedicalServiceModel({
    required this.id,
    required this.icon,
    required this.name,
    required this.color,
  });

  /// convertir el mapa a un modelo  con el factory
  /// VA FACTORY Y NOMBRE DE LA CLASE  como constructor
  ///
  factory MedicalServiceModel.fromJson(Map<String, dynamic> json) {
    return MedicalServiceModel(
      id: json["id"] ?? 0,
      icon: json["icon"] ?? "",
      name: json["name"] ?? "NOT FOUND",
      color: json["color"] ?? "0XFFFFFFFF",
    );
  }
}*/

