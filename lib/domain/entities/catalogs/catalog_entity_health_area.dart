class CatalogEntityHealthArea {
  String idAs;
  int idRegion;
  String nombre;
  int activa;
  int idDepartamento;

  CatalogEntityHealthArea({
    required this.idAs,
    required this.idRegion,
    required this.nombre,
    required this.activa,
    required this.idDepartamento,
  });

  factory CatalogEntityHealthArea.fromJson(Map<String, dynamic> json) =>
      CatalogEntityHealthArea(
        idAs: json["id_as"],
        idRegion: json["id_region"],
        nombre: json["nombre"],
        activa: json["activa"],
        idDepartamento: json["id_departamento"],
      );
}
