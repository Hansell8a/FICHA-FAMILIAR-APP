class CatalogModelDepartment {
  int status;
  bool success;
  String message;
  String? error;
  List<Datum> data;

  CatalogModelDepartment({
    required this.status,
    required this.success,
    required this.message,
    this.error,
    required this.data,
  });

  factory CatalogModelDepartment.fromJson(Map<String, dynamic> json) =>
      CatalogModelDepartment(
        status: json["status"],
        success: json["success"],
        message: json["message"],
        error: json["error"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );
}

class Datum {
  int idDepartamento;
  String nombre;
  int estadoRegistro;

  Datum({
    required this.idDepartamento,
    required this.nombre,
    required this.estadoRegistro,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        idDepartamento: json["id_departamento"],
        nombre: json["nombre"],
        estadoRegistro: json["estado_registro"],
      );
}
