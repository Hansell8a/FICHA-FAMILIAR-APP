class CatalogEntityHealthAreaByRegion {
  int idAs;
  int idRegion;
  String nombre;
  int activa;
  int idDepartamento;

  CatalogEntityHealthAreaByRegion({
    required this.idAs,
    required this.idRegion,
    required this.nombre,
    required this.activa,
    required this.idDepartamento,
  });

  factory CatalogEntityHealthAreaByRegion.fromJson(Map<String, dynamic> json) =>
      CatalogEntityHealthAreaByRegion(
        idAs: json["id_as"],
        idRegion: json["id_region"],
        nombre: json["nombre"],
        activa: json["activa"],
        idDepartamento: json["id_departamento"],
      );
}
