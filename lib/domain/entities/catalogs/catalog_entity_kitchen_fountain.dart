class CatalogEntityKitchenFountain {
  int idFuenteCocina;
  String descripcion;
  int estadoRegistro;
  int idUsuarioRegistro;
  String fechaRegistro;

  CatalogEntityKitchenFountain({
    required this.idFuenteCocina,
    required this.descripcion,
    required this.estadoRegistro,
    required this.idUsuarioRegistro,
    required this.fechaRegistro,
  });

  factory CatalogEntityKitchenFountain.fromJson(Map<String, dynamic> json) =>
      CatalogEntityKitchenFountain(
        idFuenteCocina: json["id_fuente_cocina"],
        descripcion: json["descripcion"],
        estadoRegistro: json["estado_registro"],
        idUsuarioRegistro: json["id_usuario_registro"],
        fechaRegistro: json["fecha_registro"],
      );
}
