class CatalogEntityWasteWater {
  int idTratamientoAguaResidual;
  String descripcion;
  int estadoRegistro;
  int idUsuarioRegistro;
  String fechaRegistro;

  CatalogEntityWasteWater({
    required this.idTratamientoAguaResidual,
    required this.descripcion,
    required this.estadoRegistro,
    required this.idUsuarioRegistro,
    required this.fechaRegistro,
  });

  factory CatalogEntityWasteWater.fromJson(Map<String, dynamic> json) =>
      CatalogEntityWasteWater(
        idTratamientoAguaResidual: json["id_tratamiento_agua_residual"],
        descripcion: json["descripcion"],
        estadoRegistro: json["estado_registro"],
        idUsuarioRegistro: json["id_usuario_registro"],
        fechaRegistro: json["fecha_registro"],
      );
}
