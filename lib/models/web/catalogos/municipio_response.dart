class MunicipioResponse {
  final int idMunicipio;
  final String nombre;

  MunicipioResponse({required this.idMunicipio, required this.nombre});

  factory MunicipioResponse.fromJson(Map<String, dynamic> json) {
    return MunicipioResponse(
      idMunicipio: json['ID_MUNICIPIO'],
      nombre: json['NOMBRE'],
    );
  }
}
