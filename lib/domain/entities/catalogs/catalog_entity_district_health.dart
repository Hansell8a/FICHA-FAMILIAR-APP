class CatalogEntityDistrictHealth {
  int idAs;
  int idDs;
  String nombre;
  int activa;
  int idDepartamento;
  int idMunicipio;

  CatalogEntityDistrictHealth({
    required this.idAs,
    required this.idDs,
    required this.nombre,
    required this.activa,
    required this.idDepartamento,
    required this.idMunicipio,
  });

  factory CatalogEntityDistrictHealth.fromJson(Map<String, dynamic> json) =>
      CatalogEntityDistrictHealth(
        idAs: json["id_as"],
        idDs: json["id_ds"],
        nombre: json["nombre"],
        activa: json["activa"],
        idDepartamento: json["id_departamento"],
        idMunicipio: json["id_municipio"],
      );
}
