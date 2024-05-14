class CatalogEntityHealthServiceUse {
  int idUsoServicioSanitario;
  String descripcion;
  int estadoRegistro;
  int idUsuarioRegistro;
  String fechaRegistro;

  CatalogEntityHealthServiceUse({
    required this.idUsoServicioSanitario,
    required this.descripcion,
    required this.estadoRegistro,
    required this.idUsuarioRegistro,
    required this.fechaRegistro,
  });

  factory CatalogEntityHealthServiceUse.fromJson(Map<String, dynamic> json) =>
      CatalogEntityHealthServiceUse(
        idUsoServicioSanitario: json["id_uso_servicio_sanitario"],
        descripcion: json["descripcion"],
        estadoRegistro: json["estado_registro"],
        idUsuarioRegistro: json["id_usuario_registro"],
        fechaRegistro: json["fecha_registro"],
      );
}
