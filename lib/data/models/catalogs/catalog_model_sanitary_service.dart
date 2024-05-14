class CatalogModelSanitaryService {
  int status;
  bool success;
  String message;
  String? error;
  List<Datum> data;

  CatalogModelSanitaryService({
    required this.status,
    required this.success,
    required this.message,
    this.error,
    required this.data,
  });

  factory CatalogModelSanitaryService.fromJson(Map<String, dynamic> json) =>
      CatalogModelSanitaryService(
        status: json["status"],
        success: json["success"],
        message: json["message"],
        error: json["error"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );
}

class Datum {
  int idTipoServicioSanitario;
  String descripcion;
  int estadoRegistro;
  int idUsuarioRegistro;
  String fechaRegistro;

  Datum({
    required this.idTipoServicioSanitario,
    required this.descripcion,
    required this.estadoRegistro,
    required this.idUsuarioRegistro,
    required this.fechaRegistro,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        idTipoServicioSanitario: json["id_tipo_servicio_sanitario"],
        descripcion: json["descripcion"],
        estadoRegistro: json["estado_registro"],
        idUsuarioRegistro: json["id_usuario_registro"],
        fechaRegistro: json["fecha_registro"],
      );

  Map<String, dynamic> toJson() => {
        "id_tipo_servicio_sanitario": idTipoServicioSanitario,
        "descripcion": descripcion,
        "estado_registro": estadoRegistro,
        "id_usuario_registro": idUsuarioRegistro,
        "fecha_registro": fechaRegistro
      };
}