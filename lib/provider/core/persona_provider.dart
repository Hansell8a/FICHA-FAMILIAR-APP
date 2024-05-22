import 'package:app_vacunacion_movil/configuration/configuration.dart';
import 'package:app_vacunacion_movil/models/web/core/persona_request.dart';
import 'package:app_vacunacion_movil/models/web/core/persona_response.dart';
import 'package:app_vacunacion_movil/services/catalogos/catalogos_service.dart';
import 'package:app_vacunacion_movil/services/core/persona_service.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PersonaProvider extends ChangeNotifier {
  bool _loading = false;
  List<DropdownMenuEntry<int>> _catNacionalidad = [];
  List<DropdownMenuEntry<int>> _catTipoDocumento = [];
  List<DropdownMenuEntry<int>> _catSexo = [];
  List<DropdownMenuEntry<int>> _catEstadoCivil = [];
  List<DropdownMenuEntry<int>> _catDepartamento = [];
  List<DropdownMenuEntry<int>> _catMunicipio = [];

  bool get loading => _loading;
  List<DropdownMenuEntry<int>> get catNacionalidad => _catNacionalidad;
  List<DropdownMenuEntry<int>> get catTipoDocumento => _catTipoDocumento;
  List<DropdownMenuEntry<int>> get catSexo => _catSexo;
  List<DropdownMenuEntry<int>> get catEstadoCivil => _catEstadoCivil;
  List<DropdownMenuEntry<int>> get catDepartamento => _catDepartamento;
  List<DropdownMenuEntry<int>> get catMunicipio => _catMunicipio;

  void iniciarLoading() {
    _loading = true;
    notifyListeners();
  }

  void finalizarLoading() {
    _loading = false;
    notifyListeners();
  }

  void cargarCatalogosFormularioPersona() async {
    iniciarLoading();
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String token = sharedPreferences.getString(VACUNA_TOKEN)!;
    CatalogosService catalogosService = CatalogosService();
    _catNacionalidad = await catalogosService.obtenerNacionalidades(token);
    _catTipoDocumento = await catalogosService.obtenerTiposDeDocumentos(token);
    _catSexo = await catalogosService.obtenerSexo(token);
    _catEstadoCivil = await catalogosService.obtenerEstadoCivil(token);
    _catDepartamento = await catalogosService.obtenerDepartamento(token);
    _catMunicipio = [];
    _loading = false;
    notifyListeners();
  }

  void cargarMunicipios(int idDepartamento) async {
    iniciarLoading();
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String token = sharedPreferences.getString(VACUNA_TOKEN)!;
    CatalogosService catalogosService = CatalogosService();
    _catMunicipio =
        await catalogosService.obtenerMunicipio(token, idDepartamento);
    _loading = false;
    notifyListeners();
  }

  Future<bool> registrarPersona(PersonaRequest personaRequest) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString(VACUNA_TOKEN);
    PersonaService personaService = PersonaService();
    PersonaResponse personaResponse =
        await personaService.registrarPersona(personaRequest, token ?? "");
    return personaResponse.idPersona != -1;
  }
}
