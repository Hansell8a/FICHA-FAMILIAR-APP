class CatalogModelCommunityCenter {
  int status;
  bool success;
  String message;
  String? error;
  List<Datum> data;

  CatalogModelCommunityCenter({
    required this.status,
    required this.success,
    required this.message,
    required this.error,
    required this.data,
  });

  factory CatalogModelCommunityCenter.fromJson(Map<String, dynamic> json) =>
      CatalogModelCommunityCenter(
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
  String nombre;
  int activa;

  Datum({
    required this.idAs,
    required this.idDs,
    required this.idTs,
    required this.idCc,
    required this.nombre,
    required this.activa,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        idAs: json["id_as"],
        idDs: json["id_ds"],
        idTs: json["id_ts"],
        idCc: json["id_cc"],
        nombre: json["nombre"],
        activa: json["activa"],
      );
}
