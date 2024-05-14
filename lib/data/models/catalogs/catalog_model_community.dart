class CatalogModelCommunity {
  int status;
  bool success;
  String message;
  String? error;
  List<Datum> data;

  CatalogModelCommunity({
    required this.status,
    required this.success,
    required this.message,
    this.error,
    required this.data,
  });

  factory CatalogModelCommunity.fromJson(Map<String, dynamic> json) =>
      CatalogModelCommunity(
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
  int idCc;
  int idC;
  int idDepartamento;
  int idMunicipio;
  int idLp;
  String nombre;
  int activa;

  Datum({
    required this.idAs,
    required this.idDs,
    required this.idTs,
    required this.idCc,
    required this.idC,
    required this.idDepartamento,
    required this.idMunicipio,
    required this.idLp,
    required this.nombre,
    required this.activa,
  });
  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        idAs: json["id_as"],
        idDs: json["id_ds"],
        idTs: json["id_ts"],
        idCc: json["id_cc"],
        idC: json["id_c"],
        idDepartamento: json["id_departamento"],
        idMunicipio: json["id_municipio"],
        idLp: json["id_lp"],
        nombre: json["nombre"],
        activa: json["activa"],
      );
}
