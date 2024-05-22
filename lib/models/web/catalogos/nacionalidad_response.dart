class NacionalidadResponse {
  final int idNacionalidad;
  final String descripcion;

  NacionalidadResponse(
      {required this.idNacionalidad, required this.descripcion});

  factory NacionalidadResponse.fromJson(Map<String, dynamic> json) {
    return NacionalidadResponse(
      idNacionalidad: json['ID_NACIONALIDAD'],
      descripcion: json['DESCRIPCION'],
    );
  }
}
