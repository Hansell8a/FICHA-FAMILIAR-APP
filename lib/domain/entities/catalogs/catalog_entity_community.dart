class CatalogEntityCommunity {
  int idAs;
  int idDs;
  int idTs;
  int idCc;
  int idC;
  int idDepartamento;
  int idMunicipio;
  int idLp;
  String nombre;
  int activa;

  CatalogEntityCommunity({
    required this.idAs,
    required this.idDs,
    required this.idTs,
    required this.idCc,
    required this.idC,
    required this.idDepartamento,
    required this.idMunicipio,
    required this.idLp,
    required this.nombre,
    required this.activa,
  });

  factory CatalogEntityCommunity.fromJson(Map<String, dynamic> json) =>
      CatalogEntityCommunity(
        idAs: json["id_as"],
        idDs: json["id_ds"],
        idTs: json["id_ts"],
        idCc: json["id_cc"],
        idC: json["id_c"],
        idDepartamento: json["id_departamento"],
        idMunicipio: json["id_municipio"],
        idLp: json["id_lp"],
        nombre: json["nombre"],
        activa: json["activa"],
      );
}
