class CatalogEntitySanitaryService {
  int idTipoServicioSanitario;
  String descripcion;
  int estadoRegistro;
  int idUsuarioRegistro;
  String fechaRegistro;

  CatalogEntitySanitaryService({
    required this.idTipoServicioSanitario,
    required this.descripcion,
    required this.estadoRegistro,
    required this.idUsuarioRegistro,
    required this.fechaRegistro,
  });

  factory CatalogEntitySanitaryService.fromJson(Map<String, dynamic> json) =>
      CatalogEntitySanitaryService(
        idTipoServicioSanitario: json["id_tipo_servicio_sanitario"],
        descripcion: json["descripcion"],
        estadoRegistro: json["estado_registro"],
        idUsuarioRegistro: json["id_usuario_registro"],
        fechaRegistro: json["fecha_registro"],
      );
}
