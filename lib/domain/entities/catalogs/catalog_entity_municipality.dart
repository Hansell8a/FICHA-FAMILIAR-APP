class CatalogEntityMunicipality {
  int idMunicipio;
  int idDepartamento;
  String nombre;
  int estadoRegistro;

  CatalogEntityMunicipality({
    required this.idMunicipio,
    required this.idDepartamento,
    required this.nombre,
    required this.estadoRegistro,
  });

  factory CatalogEntityMunicipality.fromJson(Map<String, dynamic> json) =>
      CatalogEntityMunicipality(
        idMunicipio: json["id_municipio"],
        idDepartamento: json["id_departamento"],
        nombre: json["nombre"],
        estadoRegistro: json["estado_registro"],
      );
}
