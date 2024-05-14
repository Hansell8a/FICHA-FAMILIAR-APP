class CatalogEntityTerritory {
  int idTerritorio;
  String descripcion;
  int idAs;
  int idDs;
  int idTs;
  int estadoRegistro;
  int idUsuarioRegistro;
  DateTime fechaRegistro;

  CatalogEntityTerritory({
    required this.idTerritorio,
    required this.descripcion,
    required this.idAs,
    required this.idDs,
    required this.idTs,
    required this.estadoRegistro,
    required this.idUsuarioRegistro,
    required this.fechaRegistro,
  });

  factory CatalogEntityTerritory.fromJson(Map<String, dynamic> json) =>
      CatalogEntityTerritory(
        idTerritorio: json["id_territorio"],
        descripcion: json["descripcion"],
        idAs: json["id_as"],
        idDs: json["id_ds"],
        idTs: json["id_ts"],
        estadoRegistro: json["estado_registro"],
        idUsuarioRegistro: json["id_usuario_registro"],
        fechaRegistro: DateTime.parse(json["fecha_registro"]),
      );
}
