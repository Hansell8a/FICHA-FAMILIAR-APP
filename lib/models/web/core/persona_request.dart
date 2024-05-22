import 'dart:convert';

import 'package:flutter/material.dart';

class PersonaRequest {
  int? idNacionalidad;
  int? idTipoDocIdentificacion;
  TextEditingController? cui;
  TextEditingController? noIdentificacion;
  TextEditingController? primerNombre;
  TextEditingController? segundoNombre;
  TextEditingController? tercerNombre;
  TextEditingController? primerApellido;
  TextEditingController? segundoApellido;
  TextEditingController? apellidoCasada;
  DateTime? fechaNacimiento;
  TextEditingController? telefono;
  TextEditingController? email;
  TextEditingController? direccion;
  int? idSexo;
  int? idEstadoCivil;
  int? idDepartamento;
  int? idMunicipio;

  PersonaRequest({
    this.idNacionalidad,
    this.idTipoDocIdentificacion,
    this.cui,
    this.noIdentificacion,
    this.primerNombre,
    this.segundoNombre,
    this.tercerNombre,
    this.primerApellido,
    this.segundoApellido,
    this.apellidoCasada,
    this.fechaNacimiento,
    this.telefono,
    this.email,
    this.direccion,
    this.idSexo,
    this.idEstadoCivil,
    this.idDepartamento,
    this.idMunicipio,
  });

  String toRequestFormat() {
    Map<String, dynamic> tmp = {
      'id_nacionalidad': idNacionalidad,
      'id_tipo_doc_identificacion': idTipoDocIdentificacion,
      'cui': cui?.text,
      'no_identificacion': noIdentificacion?.text,
      'primer_nombre': primerNombre?.text,
      'segundo_nombre': segundoNombre?.text,
      'tercer_nombre': tercerNombre?.text,
      'primer_apellido': primerApellido?.text,
      'segundo_apellido': segundoApellido?.text,
      'fecha_nacimiento': fechaNacimiento != null
          ? '${fechaNacimiento?.day}/${fechaNacimiento?.day}/${fechaNacimiento?.day}'
          : null,
      'telefono': telefono?.text,
      'email': email?.text,
      'direccion': direccion?.text,
      'id_sexo': idSexo,
      'id_estado_civil': idEstadoCivil,
      'id_departamento_residencia': idDepartamento,
      'id_municipio_residencia': idMunicipio,
      // 'id_usuario_ingreso': ,
      // 'cui_responsable': ,
      // 'edad': ,
      'apellido_casada': apellidoCasada?.text,
      // 'validado_renap': ,
    };
    return jsonEncode(tmp);
  }
}
