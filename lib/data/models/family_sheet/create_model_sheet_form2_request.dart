class CreateModelSheetForm2Request {
  int? idFichaFamiliar;
  bool habitada;
  int idTenenciaVivienda;
  int idTipoVivienda;
  int idMaterialPared;
  int idMaterialPiso;
  int idMeterialTecho;
  int idAbastecimientoAgua;
  int idTipoServicioSanitario;
  int idUsoServicioSanitario;
  int idTratamientoAguaGris;
  int idFuenteCocina;
  int idUbicacionCocina;
  int idTipoCocina;
  bool recipienteAguaReposada;
  int totalViviendaFamiliar;
  int totalViviendaPersona;
  int totalViviendaCuarto;
  int totalViviendaDormitorio;

  CreateModelSheetForm2Request({
    required this.idFichaFamiliar,
    required this.habitada,
    required this.idTenenciaVivienda,
    required this.idTipoVivienda,
    required this.idMaterialPared,
    required this.idMaterialPiso,
    required this.idMeterialTecho,
    required this.idAbastecimientoAgua,
    required this.idTipoServicioSanitario,
    required this.idUsoServicioSanitario,
    required this.idTratamientoAguaGris,
    required this.idFuenteCocina,
    required this.idUbicacionCocina,
    required this.idTipoCocina,
    required this.recipienteAguaReposada,
    required this.totalViviendaFamiliar,
    required this.totalViviendaPersona,
    required this.totalViviendaCuarto,
    required this.totalViviendaDormitorio,
  });

  factory CreateModelSheetForm2Request.fromJson(Map<String, dynamic> json) =>
      CreateModelSheetForm2Request(
        idFichaFamiliar: json["id_ficha_familiar"],
        habitada: json["habitada"],
        idTenenciaVivienda: json["id_tenencia_vivienda"],
        idTipoVivienda: json["id_tipo_vivienda"],
        idMaterialPared: json["id_material_pared"],
        idMaterialPiso: json["id_material_piso"],
        idMeterialTecho: json["id_meterial_techo"],
        idAbastecimientoAgua: json["id_abastecimiento_agua"],
        idTipoServicioSanitario: json["id_tipo_servicio_sanitario"],
        idUsoServicioSanitario: json["id_uso_servicio_sanitario"],
        idTratamientoAguaGris: json["id_tratamiento_agua_gris"],
        idFuenteCocina: json["id_fuente_cocina"],
        idUbicacionCocina: json["id_ubicacion_cocina"],
        idTipoCocina: json["id_tipo_cocina"],
        recipienteAguaReposada: json["recipiente_agua_reposada"],
        totalViviendaFamiliar: json["total_vivienda_familiar"],
        totalViviendaPersona: json["total_vivienda_persona"],
        totalViviendaCuarto: json["total_vivienda_cuarto"],
        totalViviendaDormitorio: json["total_vivienda_dormitorio"],
      );

  Map<String, dynamic> toJson() => {
        "id_ficha_familiar": idFichaFamiliar,
        "habitada": habitada,
        "id_tenencia_vivienda": idTenenciaVivienda,
        "id_tipo_vivienda": idTipoVivienda,
        "id_material_pared": idMaterialPared,
        "id_material_piso": idMaterialPiso,
        "id_meterial_techo": idMeterialTecho,
        "id_abastecimiento_agua": idAbastecimientoAgua,
        "id_tipo_servicio_sanitario": idTipoServicioSanitario,
        "id_uso_servicio_sanitario": idUsoServicioSanitario,
        "id_tratamiento_agua_gris": idTratamientoAguaGris,
        "id_fuente_cocina": idFuenteCocina,
        "id_ubicacion_cocina": idUbicacionCocina,
        "id_tipo_cocina": idTipoCocina,
        "recipiente_agua_reposada": recipienteAguaReposada,
        "total_vivienda_familiar": totalViviendaFamiliar,
        "total_vivienda_persona": totalViviendaPersona,
        "total_vivienda_cuarto": totalViviendaCuarto,
        "total_vivienda_dormitorio": totalViviendaDormitorio,
      };
}
