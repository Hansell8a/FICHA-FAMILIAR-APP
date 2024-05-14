class CatalogModelPopulatedPlace {
  int status;
  bool success;
  String message;
  String? error;
  List<Datum> data;

  CatalogModelPopulatedPlace({
    required this.status,
    required this.success,
    required this.message,
    this.error,
    required this.data,
  });

  factory CatalogModelPopulatedPlace.fromJson(Map<String, dynamic> json) =>
      CatalogModelPopulatedPlace(
        status: json["status"],
        success: json["success"],
        message: json["message"],
        error: json["error"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );
}

class Datum {
  int idDepartamento;
  int idMunicipio;
  int idLp;
  String nombre;
  String categoria;
  int estadoRegistro;

  Datum({
    required this.idDepartamento,
    required this.idMunicipio,
    required this.idLp,
    required this.nombre,
    required this.categoria,
    required this.estadoRegistro,
  });
  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        idDepartamento: json["id_departamento"],
        idMunicipio: json["id_municipio"],
        idLp: json["id_lp"],
        nombre: json["nombre"],
        categoria: json["categoria"],
        estadoRegistro: json["estado_registro"],
      );
}
