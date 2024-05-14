class CatalogEntityKitchenLocation {
  int idUbicacionCocina;
  String descripcion;
  int estadoRegistro;
  int idUsuarioRegistro;
  String fechaRegistro;

  CatalogEntityKitchenLocation({
    required this.idUbicacionCocina,
    required this.descripcion,
    required this.estadoRegistro,
    required this.idUsuarioRegistro,
    required this.fechaRegistro,
  });

  factory CatalogEntityKitchenLocation.fromJson(Map<String, dynamic> json) =>
      CatalogEntityKitchenLocation(
        idUbicacionCocina: json["id_ubicacion_cocina"],
        descripcion: json["descripcion"],
        estadoRegistro: json["estado_registro"],
        idUsuarioRegistro: json["id_usuario_registro"],
        fechaRegistro: json["fecha_registro"],
      );
}
