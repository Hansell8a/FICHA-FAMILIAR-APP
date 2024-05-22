class SexoResponse {
  final int idSexo;
  final String descripcion;

  SexoResponse({required this.idSexo, required this.descripcion});

  factory SexoResponse.fromJson(Map<String, dynamic> json) {
    return SexoResponse(
      idSexo: json['ID_SEXO'],
      descripcion: json['DESCRIPCION'],
    );
  }
}
