class CatalogEntitySector {
  int idSector;
  String descripcion;
  int idTerritorio;
  int estadoRegistro;
  int idUsuarioRegistro;
  DateTime fechaRegistro;

  CatalogEntitySector({
    required this.idSector,
    required this.descripcion,
    required this.idTerritorio,
    required this.estadoRegistro,
    required this.idUsuarioRegistro,
    required this.fechaRegistro,
  });

  factory CatalogEntitySector.fromJson(Map<String, dynamic> json) =>
      CatalogEntitySector(
        idSector: json["id_sector"],
        descripcion: json["descripcion"],
        idTerritorio: json["id_territorio"],
        estadoRegistro: json["estado_registro"],
        idUsuarioRegistro: json["id_usuario_registro"],
        fechaRegistro: DateTime.parse(json["fecha_registro"]),
      );
}
