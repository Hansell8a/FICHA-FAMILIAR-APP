class CatalogEntityPopulatedPlace {
  int idDepartamento;
  int idMunicipio;
  int idLp;
  String nombre;
  String categoria;
  int estadoRegistro;

  CatalogEntityPopulatedPlace({
    required this.idDepartamento,
    required this.idMunicipio,
    required this.idLp,
    required this.nombre,
    required this.categoria,
    required this.estadoRegistro,
  });

  factory CatalogEntityPopulatedPlace.fromJson(Map<String, dynamic> json) =>
      CatalogEntityPopulatedPlace(
        idDepartamento: json["id_departamento"],
        idMunicipio: json["id_municipio"],
        idLp: json["id_lp"],
        nombre: json["nombre"],
        categoria: json["categoria"],
        estadoRegistro: json["estado_registro"],
      );
}
