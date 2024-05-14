class CatalogEntityGarbageTreatment {
  int idTratamientoBasura;
  String descripcion;
  int estadoRegistro;
  int idUsuarioRegistro;
  String fechaRegistro;

  CatalogEntityGarbageTreatment({
    required this.idTratamientoBasura,
    required this.descripcion,
    required this.estadoRegistro,
    required this.idUsuarioRegistro,
    required this.fechaRegistro,
  });

  factory CatalogEntityGarbageTreatment.fromJson(Map<String, dynamic> json) =>
      CatalogEntityGarbageTreatment(
        idTratamientoBasura: json["id_tratamiento_basura"],
        descripcion: json["descripcion"],
        estadoRegistro: json["estado_registro"],
        idUsuarioRegistro: json["id_usuario_registro"],
        fechaRegistro: json["fecha_registro"],
      );
}
