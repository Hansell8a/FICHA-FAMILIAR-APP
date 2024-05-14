class CatalogEntityWaterConsumption {
  int idAbastecimientoAgua;
  String descripcion;
  int estadoRegistro;
  int idUsuarioRegistro;
  String fechaRegistro;

  CatalogEntityWaterConsumption({
    required this.idAbastecimientoAgua,
    required this.descripcion,
    required this.estadoRegistro,
    required this.idUsuarioRegistro,
    required this.fechaRegistro,
  });

  factory CatalogEntityWaterConsumption.fromJson(Map<String, dynamic> json) =>
      CatalogEntityWaterConsumption(
        idAbastecimientoAgua: json["id_abastecimiento_agua"],
        descripcion: json["descripcion"],
        estadoRegistro: json["estado_registro"],
        idUsuarioRegistro: json["id_usuario_registro"],
        fechaRegistro: json["fecha_registro"],
      );
}
