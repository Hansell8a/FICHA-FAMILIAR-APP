class CatalogModelHealthAreaByRegion {
  int status;
  bool success;
  String message;
  dynamic error;
  List<Datum> data;

  CatalogModelHealthAreaByRegion({
    required this.status,
    required this.success,
    required this.message,
    required this.error,
    required this.data,
  });

  factory CatalogModelHealthAreaByRegion.fromJson(Map<String, dynamic> json) =>
      CatalogModelHealthAreaByRegion(
        status: json["status"],
        success: json["success"],
        message: json["message"],
        error: json["error"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );
}

class Datum {
  int idAs;
  int idRegion;
  String nombre;
  int activa;
  int idDepartamento;

  Datum({
    required this.idAs,
    required this.idRegion,
    required this.nombre,
    required this.activa,
    required this.idDepartamento,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        idAs: json["id_as"],
        idRegion: json["id_region"],
        nombre: json["nombre"],
        activa: json["activa"],
        idDepartamento: json["id_departamento"],
      );
}
