class CatalogEntityCommunityCenter {
  int idAs;
  int idDs;
  int idTs;
  int idCc;
  String nombre;
  int activa;

  CatalogEntityCommunityCenter({
    required this.idAs,
    required this.idDs,
    required this.idTs,
    required this.idCc,
    required this.nombre,
    required this.activa,
  });

  factory CatalogEntityCommunityCenter.fromJson(Map<String, dynamic> json) =>
      CatalogEntityCommunityCenter(
        idAs: json["id_as"],
        idDs: json["id_ds"],
        idTs: json["id_ts"],
        idCc: json["id_cc"],
        nombre: json["nombre"],
        activa: json["activa"],
      );
}
