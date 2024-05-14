class CreateModelSheetForm1Response {
  int status;
  bool success;
  String message;
  String error;
  List<Datum> data;

  CreateModelSheetForm1Response({
    required this.status,
    required this.success,
    required this.message,
    required this.error,
    required this.data,
  });

  factory CreateModelSheetForm1Response.fromJson(Map<String, dynamic> json) =>
      CreateModelSheetForm1Response(
        status: json["status"],
        success: json["success"],
        message: json["message"],
        error: json["error"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "success": success,
        "message": message,
        "error": error,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  int idViviendaIdentificacion;
  int idFichaFamiliar;
  int latitud;
  int longitud;
  String direccion;
  int idDepartamento;
  int idMunicipio;
  int idLugarPoblado;
  String idAs;
  String idDs;
  String idTs;
  String idCc;
  String idC;
  int idTerritorio;
  int idSector;
  int estadoRegistro;
  int idUsuarioRegistro;
  DateTime fechaRegistro;
  int idEstadoFicha;
  int idUsuarioSuperviso;
  DateTime fechaSupervision;

  Datum({
    required this.idViviendaIdentificacion,
    required this.idFichaFamiliar,
    required this.latitud,
    required this.longitud,
    required this.direccion,
    required this.idDepartamento,
    required this.idMunicipio,
    required this.idLugarPoblado,
    required this.idAs,
    required this.idDs,
    required this.idTs,
    required this.idCc,
    required this.idC,
    required this.idTerritorio,
    required this.idSector,
    required this.estadoRegistro,
    required this.idUsuarioRegistro,
    required this.fechaRegistro,
    required this.idEstadoFicha,
    required this.idUsuarioSuperviso,
    required this.fechaSupervision,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        idViviendaIdentificacion: json["id_vivienda_identificacion"],
        idFichaFamiliar: json["id_ficha_familiar"],
        latitud: json["latitud"],
        longitud: json["longitud"],
        direccion: json["direccion"],
        idDepartamento: json["id_departamento"],
        idMunicipio: json["id_municipio"],
        idLugarPoblado: json["id_lugar_poblado"],
        idAs: json["id_as"],
        idDs: json["id_ds"],
        idTs: json["id_ts"],
        idCc: json["id_cc"],
        idC: json["id_c"],
        idTerritorio: json["id_territorio"],
        idSector: json["id_sector"],
        estadoRegistro: json["estado_registro"],
        idUsuarioRegistro: json["id_usuario_registro"],
        fechaRegistro: DateTime.parse(json["fecha_registro"]),
        idEstadoFicha: json["id_estado_ficha"],
        idUsuarioSuperviso: json["id_usuario_superviso"],
        fechaSupervision: DateTime.parse(json["fecha_supervision"]),
      );

  Map<String, dynamic> toJson() => {
        "id_vivienda_identificacion": idViviendaIdentificacion,
        "id_ficha_familiar": idFichaFamiliar,
        "latitud": latitud,
        "longitud": longitud,
        "direccion": direccion,
        "id_departamento": idDepartamento,
        "id_municipio": idMunicipio,
        "id_lugar_poblado": idLugarPoblado,
        "id_as": idAs,
        "id_ds": idDs,
        "id_ts": idTs,
        "id_cc": idCc,
        "id_c": idC,
        "id_territorio": idTerritorio,
        "id_sector": idSector,
        "estado_registro": estadoRegistro,
        "id_usuario_registro": idUsuarioRegistro,
        "fecha_registro": fechaRegistro.toIso8601String(),
        "id_estado_ficha": idEstadoFicha,
        "id_usuario_superviso": idUsuarioSuperviso,
        "fecha_supervision": fechaSupervision.toIso8601String(),
      };
}
