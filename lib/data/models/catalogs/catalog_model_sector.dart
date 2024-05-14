
class CatalogModelSector {
  int status;
  bool success;
  String message;
  String? error;
  List<Datum> data;

  CatalogModelSector({
    required this.status,
    required this.success,
    required this.message,
    this.error,
    required this.data,
  });

  factory CatalogModelSector.fromJson(Map<String, dynamic> json) =>
      CatalogModelSector(
        status: json["status"],
        success: json["success"],
        message: json["message"],
        error: json["error"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );
}

class Datum {
  int idSector;
  String descripcion;
  int idTerritorio;
  int estadoRegistro;
  int idUsuarioRegistro;
  DateTime fechaRegistro;

  Datum({
    required this.idSector,
    required this.descripcion,
    required this.idTerritorio,
    required this.estadoRegistro,
    required this.idUsuarioRegistro,
    required this.fechaRegistro,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        idSector: json["id_sector"],
        descripcion: json["descripcion"],
        idTerritorio: json["id_territorio"],
        estadoRegistro: json["estado_registro"],
        idUsuarioRegistro: json["id_usuario_registro"],
        fechaRegistro: DateTime.parse(json["fecha_registro"]),
      );
}
