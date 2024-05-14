class CatalogEntityWallType {
  int idMaterialPared;
  String descripcion;
  int estadoRegistro;
  int idUsuarioRegistro;
  String fechaRegistro;

  CatalogEntityWallType({
    required this.idMaterialPared,
    required this.descripcion,
    required this.estadoRegistro,
    required this.idUsuarioRegistro,
    required this.fechaRegistro,
  });

  factory CatalogEntityWallType.fromJson(Map<String, dynamic> json) => CatalogEntityWallType(
        idMaterialPared: json["id_material_pared"],
        descripcion: json["descripcion"],
        estadoRegistro: json["estado_registro"],
        idUsuarioRegistro: json["id_usuario_registro"],
        fechaRegistro: json["fecha_registro"],
      );
}
