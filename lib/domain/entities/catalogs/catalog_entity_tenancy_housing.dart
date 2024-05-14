class CatalogEntityTenancyHousing {
  int idTenenciaVivienda;
  String descripcion;
  int estadoRegistro;
  int idUsuarioRegistro;
  String fechaRegistro;

  CatalogEntityTenancyHousing({
    required this.idTenenciaVivienda,
    required this.descripcion,
    required this.estadoRegistro,
    required this.idUsuarioRegistro,
    required this.fechaRegistro,
  });

  factory CatalogEntityTenancyHousing.fromJson(Map<String, dynamic> json) =>
      CatalogEntityTenancyHousing(
        idTenenciaVivienda: json["id_tenencia_vivienda"],
        descripcion: json["descripcion"],
        estadoRegistro: json["estado_registro"],
        idUsuarioRegistro: json["id_usuario_registro"],
        fechaRegistro: json["fecha_registro"],
      );
}
