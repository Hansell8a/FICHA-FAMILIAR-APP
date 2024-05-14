class CatalogModelServiceDescription {
  int status;
  bool success;
  String message;
  String? error;
  List<Datum> data;

  CatalogModelServiceDescription({
    required this.status,
    required this.success,
    required this.message,
    this.error,
    required this.data,
  });

  factory CatalogModelServiceDescription.fromJson(Map<String, dynamic> json) =>
      CatalogModelServiceDescription(
        status: json["status"],
        success: json["success"],
        message: json["message"],
        error: json["error"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );
}

class Datum {
  int idAs;
  int idDs;
  int idTs;
  int idTss;
  String nombre;
  int activa;
  int idDepartamento;
  int idMunicipio;

  Datum({
    required this.idAs,
    required this.idDs,
    required this.idTs,
    required this.idTss,
    required this.nombre,
    required this.activa,
    required this.idDepartamento,
    required this.idMunicipio,
  });
  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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
