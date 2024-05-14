class CatalogEntityHousingEquipment {
  int idEquipamientoVivienda;
  String descripcion;
  int estadoRegistro;
  int idUsuarioRegistro;
  String fechaRegistro;

  CatalogEntityHousingEquipment({
    required this.idEquipamientoVivienda,
    required this.descripcion,
    required this.estadoRegistro,
    required this.idUsuarioRegistro,
    required this.fechaRegistro,
  });

  factory CatalogEntityHousingEquipment.fromJson(Map<String, dynamic> json) =>
      CatalogEntityHousingEquipment(
        idEquipamientoVivienda: json["id_equipamiento_vivienda"],
        descripcion: json["descripcion"],
        estadoRegistro: json["estado_registro"],
        idUsuarioRegistro: json["id_usuario_registro"],
        fechaRegistro: json["fecha_registro"],
      );
}
