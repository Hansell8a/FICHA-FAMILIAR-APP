class CatalogModelDistrictHealth {
  int status;
  bool success;
  String message;
  String? error;
  List<Datum> data;

  CatalogModelDistrictHealth({
    required this.status,
    required this.success,
    required this.message,
    this.error,
    required this.data,
  });

  factory CatalogModelDistrictHealth.fromJson(Map<String, dynamic> json) =>
      CatalogModelDistrictHealth(
        status: json["status"],
        success: json["success"],
        message: json["message"],
        error: json["error"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );
}

class Datum {
  int idAs;
  int idDs;
  String nombre;
  int activa;
  int idDepartamento;
  int idMunicipio;

  Datum({
    required this.idAs,
    required this.idDs,
    required this.nombre,
    required this.activa,
    required this.idDepartamento,
    required this.idMunicipio,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        idAs: json["id_as"],
        idDs: json["id_ds"],
        nombre: json["nombre"],
        activa: json["activa"],
        idDepartamento: json["id_departamento"],
        idMunicipio: json["id_municipio"],
      );
}
