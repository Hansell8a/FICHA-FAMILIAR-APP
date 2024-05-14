class CatalogEntityDepartment {
  int idDepartamento;
  String nombre;
  int estadoRegistro;

  CatalogEntityDepartment({
    required this.idDepartamento,
    required this.nombre,
    required this.estadoRegistro,
  });

  factory CatalogEntityDepartment.fromJson(Map<String, dynamic> json) =>
      CatalogEntityDepartment(
        idDepartamento: json["id_departamento"],
        nombre: json["nombre"],
        estadoRegistro: json["estado_registro"],
      );
}
