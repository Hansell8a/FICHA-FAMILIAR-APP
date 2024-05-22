class EstadoCivilResponse {
  final int idEstadoCivil;
  final String descripcion;

  EstadoCivilResponse({required this.idEstadoCivil, required this.descripcion});

  factory EstadoCivilResponse.fromJson(Map<String, dynamic> json) {
    return EstadoCivilResponse(
      idEstadoCivil: json['ID_ESTADO_CIVIL'],
      descripcion: json['DESCRIPCION'],
    );
  }
}
