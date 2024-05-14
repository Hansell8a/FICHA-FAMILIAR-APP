class CatalogEntityFloorMaterial {
  int idMaterialPiso;
  String descripcion;
  int estadoRegistro;
  int idUsuarioRegistro;
  String fechaRegistro;

  CatalogEntityFloorMaterial({
    required this.idMaterialPiso,
    required this.descripcion,
    required this.estadoRegistro,
    required this.idUsuarioRegistro,
    required this.fechaRegistro,
  });

  factory CatalogEntityFloorMaterial.fromJson(Map<String, dynamic> json) =>
      CatalogEntityFloorMaterial(
        idMaterialPiso: json["id_material_piso"],
        descripcion: json["descripcion"],
        estadoRegistro: json["estado_registro"],
        idUsuarioRegistro: json["id_usuario_registro"],
        fechaRegistro: json["fecha_registro"],
      );
}
