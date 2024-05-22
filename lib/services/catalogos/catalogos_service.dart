import 'dart:convert';

import 'package:app_vacunacion_movil/configuration/configuration.dart';
import 'package:app_vacunacion_movil/models/app/widgets/dropdown_item.dart';
import 'package:app_vacunacion_movil/models/web/catalogos/departamento_response.dart';
import 'package:app_vacunacion_movil/models/web/catalogos/estado_civil_response.dart';
import 'package:app_vacunacion_movil/models/web/catalogos/municipio_response.dart';
import 'package:app_vacunacion_movil/models/web/catalogos/nacionalidad_response.dart';
import 'package:app_vacunacion_movil/models/web/catalogos/sexo_response.dart';
import 'package:app_vacunacion_movil/models/web/catalogos/tipo_documento_response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class CatalogosService {
  Map<String, String> obtenerHeaders(String token) {
    return {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token'
    };
  }

  Future<List<DropdownMenuEntry<int>>> obtenerNacionalidades(String token) async {
    try {
      Uri url = Uri.parse(BASE_WS_CATALOGO + WS_CAT_NACIONALIDAD);
      Response response = await get(url, headers: obtenerHeaders(token));
      final jsonArrayRequest = jsonDecode(response.body).cast<Map<String, dynamic>>();
      List<NacionalidadResponse> data = jsonArrayRequest.map<NacionalidadResponse>((json) => NacionalidadResponse.fromJson(json)).toList();

      List<DropdownMenuEntry<int>> nacionalidades = [];
      for (NacionalidadResponse nacionalidad in data) {
        nacionalidades.add(DropdownMenuEntry(
          value: nacionalidad.idNacionalidad,
          label: nacionalidad.descripcion,
        ));
      }

      return nacionalidades;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  Future<List<DropdownMenuEntry<int>>> obtenerTiposDeDocumentos(
      String token) async {
    try {
      Uri url = Uri.parse(BASE_WS_CATALOGO + WS_CAT_TIPO_DOC_IDENTIFICACION);
      Response response = await get(url, headers: obtenerHeaders(token));
      final jsonArrayRequest =
          jsonDecode(response.body).cast<Map<String, dynamic>>();
      List<TipoDocumentoResponse> data = jsonArrayRequest
          .map<TipoDocumentoResponse>(
              (json) => TipoDocumentoResponse.fromJson(json))
          .toList();

      List<DropdownMenuEntry<int>> tiposDeDocumentos = [];
      for (TipoDocumentoResponse tipoDocumento in data) {
        tiposDeDocumentos.add(DropdownMenuEntry(
          value: tipoDocumento.idTipoDocIdentificacion,
          label: tipoDocumento.descripcion,
        ));
      }

      return tiposDeDocumentos;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  Future<List<DropdownMenuEntry<int>>> obtenerSexo(String token) async {
    try {
      Uri url = Uri.parse(BASE_WS_CATALOGO + WS_CAT_SEXO);
      Response response = await get(url, headers: obtenerHeaders(token));
      final jsonArrayRequest =
          jsonDecode(response.body).cast<Map<String, dynamic>>();
      List<SexoResponse> data = jsonArrayRequest
          .map<SexoResponse>((json) => SexoResponse.fromJson(json))
          .toList();

      List<DropdownMenuEntry<int>> sexos = [];
      for (SexoResponse sexo in data) {
        sexos.add(DropdownMenuEntry(
          value: sexo.idSexo,
          label: sexo.descripcion,
        ));
      }

      return sexos;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  Future<List<DropdownMenuEntry<int>>> obtenerEstadoCivil(String token) async {
    try {
      Uri url = Uri.parse(BASE_WS_CATALOGO + WS_CAT_ESTADO_CIVIL);
      Response response = await get(url, headers: obtenerHeaders(token));
      final jsonArrayRequest =
          jsonDecode(response.body).cast<Map<String, dynamic>>();
      List<EstadoCivilResponse> data = jsonArrayRequest
          .map<EstadoCivilResponse>(
              (json) => EstadoCivilResponse.fromJson(json))
          .toList();

      List<DropdownMenuEntry<int>> estadosCiviles = [];
      for (EstadoCivilResponse estadoCivil in data) {
        estadosCiviles.add(DropdownMenuEntry(
          value: estadoCivil.idEstadoCivil,
          label: estadoCivil.descripcion,
        ));
      }

      return estadosCiviles;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  Future<List<DropdownMenuEntry<int>>> obtenerDepartamento(String token) async {
    try {
      Uri url = Uri.parse(BASE_WS_CATALOGO + WS_CAT_DEPARTAMENTO);
      Response response = await get(url, headers: obtenerHeaders(token));
      final jsonArrayRequest =
          jsonDecode(response.body).cast<Map<String, dynamic>>();
      List<DepartamentoResponse> data = jsonArrayRequest
          .map<DepartamentoResponse>(
              (json) => DepartamentoResponse.fromJson(json))
          .toList();

      List<DropdownMenuEntry<int>> departamentos = [];
      for (DepartamentoResponse departamento in data) {
        departamentos.add(DropdownMenuEntry(
          value: departamento.idDepartamento,
          label: departamento.nombre,
        ));
      }

      return departamentos;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  Future<List<DropdownMenuEntry<int>>> obtenerMunicipio(
      String token, int departamento) async {
    try {
      Uri url = Uri.parse(
          BASE_WS_CATALOGO + WS_CAT_MUNICIPIO + departamento.toString());
      Response response = await get(url, headers: obtenerHeaders(token));
      final jsonArrayRequest =
          jsonDecode(response.body).cast<Map<String, dynamic>>();
      List<MunicipioResponse> data = jsonArrayRequest
          .map<MunicipioResponse>((json) => MunicipioResponse.fromJson(json))
          .toList();

      List<DropdownMenuEntry<int>> municipios = [];
      for (MunicipioResponse municipio in data) {
        municipios.add(DropdownMenuEntry(
          value: municipio.idMunicipio,
          label: municipio.nombre,
        ));
      }

      return municipios;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
