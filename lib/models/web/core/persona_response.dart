class PersonaResponse {
  final int idPersona;

  PersonaResponse({required this.idPersona});

  factory PersonaResponse.fromJson(Map<String, dynamic> json) {
    return PersonaResponse(
      idPersona: json['ID_PERSONA'],
    );
  }
}
