class CatalogEntityAnimalType {
  int idTipoAnimal;
  String descripcion;
  int estadoRegistro;
  int idUsuarioRegistro;
  String fechaRegistro;

  CatalogEntityAnimalType({
    required this.idTipoAnimal,
    required this.descripcion,
    required this.estadoRegistro,
    required this.idUsuarioRegistro,
    required this.fechaRegistro,
  });

  factory CatalogEntityAnimalType.fromJson(Map<String, dynamic> json) =>
      CatalogEntityAnimalType(
        idTipoAnimal: json["id_tipo_animal"],
        descripcion: json["descripcion"],
        estadoRegistro: json["estado_registro"],
        idUsuarioRegistro: json["id_usuario_registro"],
        fechaRegistro: json["fecha_registro"],
      );
}
