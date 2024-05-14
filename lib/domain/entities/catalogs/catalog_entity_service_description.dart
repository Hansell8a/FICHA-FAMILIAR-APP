class CatalogEntityServiceDescription {
  int idAs;
  int idDs;
  int idTs;
  int idTss;
  String nombre;
  int activa;
  int idDepartamento;
  int idMunicipio;

  CatalogEntityServiceDescription({
    required this.idAs,
    required this.idDs,
    required this.idTs,
    required this.idTss,
    required this.nombre,
    required this.activa,
    required this.idDepartamento,
    required this.idMunicipio,
  });
  factory CatalogEntityServiceDescription.fromJson(Map<String, dynamic> json) =>
      CatalogEntityServiceDescription(
        idAs: json["id_as"],
        idDs: json["id_ds"],
        idTs: json["id_ts"],
        idTss: json["id_tss"],
        nombre: json["nombre"],
        activa: json["activa"],
        idDepartamento: json["id_departamento"],
        idMunicipio: json["id_municipio"],
      );
}
