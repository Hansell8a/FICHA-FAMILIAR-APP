class CatalogModelTerritory {
  int status;
  bool success;
  String message;
  String? error;
  List<Datum> data;

  CatalogModelTerritory({
    required this.status,
    required this.success,
    required this.message,
    this.error,
    required this.data,
  });

  factory CatalogModelTerritory.fromJson(Map<String, dynamic> json) =>
      CatalogModelTerritory(
        status: json["status"],
        success: json["success"],
        message: json["message"],
        error: json["error"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );
}

class Datum {
  int idTerritorio;
  String descripcion;
  int idAs;
  int idDs;
  int idTs;
  int estadoRegistro;
  int idUsuarioRegistro;
  DateTime fechaRegistro;

  Datum({
    required this.idTerritorio,
    required this.descripcion,
    required this.idAs,
    required this.idDs,
    required this.idTs,
    required this.estadoRegistro,
    required this.idUsuarioRegistro,
    required this.fechaRegistro,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        idTerritorio: json["id_territorio"],
        descripcion: json["descripcion"],
        idAs: json["id_as"],
        idDs: json["id_ds"],
        idTs: json["id_ts"],
        estadoRegistro: json["estado_registro"],
        idUsuarioRegistro: json["id_usuario_registro"],
        fechaRegistro: DateTime.parse(json["fecha_registro"]),
      );
}
