class CatalogModelGarbageTreatment {
  int status;
  bool success;
  String message;
  String? error;
  List<Datum> data;

  CatalogModelGarbageTreatment({
    required this.status,
    required this.success,
    required this.message,
    this.error,
    required this.data,
  });

  factory CatalogModelGarbageTreatment.fromJson(Map<String, dynamic> json) =>
      CatalogModelGarbageTreatment(
        status: json["status"],
        success: json["success"],
        message: json["message"],
        error: json["error"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );
}

class Datum {
  int idTratamientoBasura;
  String descripcion;
  int estadoRegistro;
  int idUsuarioRegistro;
  String fechaRegistro;

  Datum({
    required this.idTratamientoBasura,
    required this.descripcion,
    required this.estadoRegistro,
    required this.idUsuarioRegistro,
    required this.fechaRegistro,
  });
  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        idTratamientoBasura: json["id_tratamiento_basura"],
        descripcion: json["descripcion"],
        estadoRegistro: json["estado_registro"],
        idUsuarioRegistro: json["id_usuario_registro"],
        fechaRegistro: json["fecha_registro"],
      );
}
