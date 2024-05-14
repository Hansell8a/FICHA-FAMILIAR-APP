class CatalogModelKitchenFountain {
  int status;
  bool success;
  String message;
  String? error;
  List<Datum> data;

  CatalogModelKitchenFountain({
    required this.status,
    required this.success,
    required this.message,
    this.error,
    required this.data,
  });

  factory CatalogModelKitchenFountain.fromJson(Map<String, dynamic> json) =>
      CatalogModelKitchenFountain(
        status: json["status"],
        success: json["success"],
        message: json["message"],
        error: json["error"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );
}

class Datum {
  int idFuenteCocina;
  String descripcion;
  int estadoRegistro;
  int idUsuarioRegistro;
  String fechaRegistro;

  Datum({
    required this.idFuenteCocina,
    required this.descripcion,
    required this.estadoRegistro,
    required this.idUsuarioRegistro,
    required this.fechaRegistro,
  });
  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        idFuenteCocina: json["id_fuente_cocina"],
        descripcion: json["descripcion"],
        estadoRegistro: json["estado_registro"],
        idUsuarioRegistro: json["id_usuario_registro"],
        fechaRegistro: json["fecha_registro"],
      );
}
