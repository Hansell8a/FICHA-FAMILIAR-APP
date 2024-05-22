class TipoDocumentoResponse {
  final int idTipoDocIdentificacion;
  final String descripcion;

  TipoDocumentoResponse(
      {required this.idTipoDocIdentificacion, required this.descripcion});

  factory TipoDocumentoResponse.fromJson(Map<String, dynamic> json) {
    return TipoDocumentoResponse(
      idTipoDocIdentificacion: json['ID_TIPO_DOC_IDENTIFICACION'],
      descripcion: json['DESCRIPCION'],
    );
  }
}
