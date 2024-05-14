class CreateModelSheetForm1Request {
  int idEstadoFicha;
  int? idUsuarioSuperviso;
  String fechaSupervision;
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
  int? idTerritorio;
  int? idSector;

  CreateModelSheetForm1Request({
    required this.idEstadoFicha,
    required this.idUsuarioSuperviso,
    required this.fechaSupervision,
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
  });

  factory CreateModelSheetForm1Request.fromJson(Map<String, dynamic> json) =>
      CreateModelSheetForm1Request(
        idEstadoFicha: json["id_estado_ficha"],
        idUsuarioSuperviso: json["id_usuario_superviso"],
        fechaSupervision: json["fecha_supervision"],
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
      );

  Map<String, dynamic> toJson() => {
        "id_estado_ficha": idEstadoFicha,
        "id_usuario_superviso": idUsuarioSuperviso,
        "fecha_supervision": fechaSupervision,
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
      };
}
