class DepartamentoResponse {
  final int idDepartamento;
  final String nombre;

  DepartamentoResponse({required this.idDepartamento, required this.nombre});

  factory DepartamentoResponse.fromJson(Map<String, dynamic> json) {
    return DepartamentoResponse(
      idDepartamento: json['ID_DEPARTAMENTO'],
      nombre: json['NOMBRE'],
    );
  }
}
