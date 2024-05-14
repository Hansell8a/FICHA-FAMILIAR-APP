class CatalogEntityKitchenType {
  int idTipoCocina;
  String descripcion;
  int estadoRegistro;
  int idUsuarioRegistro;
  String fechaRegistro;

  CatalogEntityKitchenType({
    required this.idTipoCocina,
    required this.descripcion,
    required this.estadoRegistro,
    required this.idUsuarioRegistro,
    required this.fechaRegistro,
  });

  factory CatalogEntityKitchenType.fromJson(Map<String, dynamic> json) =>
      CatalogEntityKitchenType(
        idTipoCocina: json["id_tipo_cocina"],
        descripcion: json["descripcion"],
        estadoRegistro: json["estado_registro"],
        idUsuarioRegistro: json["id_usuario_registro"],
        fechaRegistro: json["fecha_registro"],
      );
}
