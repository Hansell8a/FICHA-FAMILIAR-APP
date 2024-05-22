import 'package:app_vacunacion_movil/models/web/core/persona_request.dart';
import 'package:app_vacunacion_movil/provider/core/persona_provider.dart';
import 'package:app_vacunacion_movil/widgets/dropdown_field_widget.dart';
import 'package:app_vacunacion_movil/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormulaPersonaScreen extends StatefulWidget {
  static const String screenName = 'Formulario';

  const FormulaPersonaScreen({super.key});

  @override
  State<FormulaPersonaScreen> createState() => FormulaPersonaScreenState();
}

class FormulaPersonaScreenState extends State<FormulaPersonaScreen> {
  bool _registrando = false;
  final PersonaRequest _personaRequest = PersonaRequest(
    idNacionalidad: 31,
    idTipoDocIdentificacion: 1,
    cui: TextEditingController(),
    noIdentificacion: TextEditingController(),
    primerNombre: TextEditingController(),
    segundoNombre: TextEditingController(),
    tercerNombre: TextEditingController(),
    primerApellido: TextEditingController(),
    segundoApellido: TextEditingController(),
    apellidoCasada: TextEditingController(),
    telefono: TextEditingController(),
    email: TextEditingController(),
    direccion: TextEditingController(),
  );

  void handleRegistrarPersona() async {
    setState(() {
      _registrando = true;
    });
    final result = await Provider.of<PersonaProvider>(context, listen: false)
        .registrarPersona(_personaRequest);
    setState(() {
      _registrando = false;
    });
    if (result) {
      mostrarNotificacion(context, 'Persona registrada con éxito!');
      Navigator.pop(context);
    } else {
      mostrarNotificacion(context, 'Ocurrio un error al registrar persona');
    }
  }

  @override
  Widget build(BuildContext context) {
    PersonaProvider personaProvider = Provider.of<PersonaProvider>(context);
    return formularioPersona(personaProvider);
  }

  Widget formularioPersona(PersonaProvider personaProvider) {
    return SingleChildScrollView(
      child: Column(
        children: [
          tituloSeccion(titulo: 'Datos de la persona', icon: Icons.person),
          DropdownFieldWidget(
            valores: personaProvider.catTipoDocumento,
            valorPorDefecto: _personaRequest.idTipoDocIdentificacion,
            labelText: "Documento de identificación",
            handleValorSeleccionado: (valor) => setState(() {
              _personaRequest.idTipoDocIdentificacion = valor;
              if (_personaRequest.idTipoDocIdentificacion == 1) {
                _personaRequest.idNacionalidad = 31;
                _personaRequest.cui?.clear();
                _personaRequest.noIdentificacion?.clear();
              }
            }),
          ),
          DropdownFieldWidget(
            valores: personaProvider.catNacionalidad,
            valorPorDefecto: _personaRequest.idNacionalidad,
            labelText: "Nacionalidad",
            enabled: habilitarNacionalidad(),
            handleValorSeleccionado: (valor) =>
                setState(() => _personaRequest.idNacionalidad = valor),
          ),
          tipoNoIdentificacion(),
          DropdownFieldWidget(
            valores: personaProvider.catSexo,
            labelText: "Sexo",
            handleValorSeleccionado: (valor) =>
                setState(() => _personaRequest.idSexo = valor),
          ),
          ...fechaDeNacimiento(),
          TextFieldWidget(
            labelText: 'Primer nombre',
            texto: _personaRequest.primerNombre,
            textoPermitido: '[A-ZÁÉÍÓÚÑa-záéíóúñÀÈÌÒÙàèìòù]',
            longitudMaximaTexto: 50,
          ),
          TextFieldWidget(
            labelText: 'Segundo nombre',
            texto: _personaRequest.segundoNombre,
            textoPermitido: '[A-ZÁÉÍÓÚÑa-záéíóúñÀÈÌÒÙàèìòù]',
            longitudMaximaTexto: 50,
          ),
          TextFieldWidget(
            labelText: 'Tercer nombre',
            texto: _personaRequest.tercerNombre,
            textoPermitido: '[A-ZÁÉÍÓÚÑa-záéíóúñÀÈÌÒÙàèìòù]',
            longitudMaximaTexto: 50,
          ),
          TextFieldWidget(
            labelText: 'Primer apellido',
            texto: _personaRequest.primerApellido,
            textoPermitido: '[A-ZÁÉÍÓÚÑa-záéíóúñÀÈÌÒÙàèìòù]',
            longitudMaximaTexto: 50,
          ),
          TextFieldWidget(
            labelText: 'Segundo apellido',
            texto: _personaRequest.segundoApellido,
            textoPermitido: '[A-ZÁÉÍÓÚÑa-záéíóúñÀÈÌÒÙàèìòù]',
            longitudMaximaTexto: 50,
          ),
          ...apellidoDeCasada(),
          TextFieldWidget(
            labelText: 'Teléfono',
            texto: _personaRequest.telefono,
            textoPermitido: r'^\d+$',
            longitudMaximaTexto: 8,
          ),
          TextFieldWidget(
            labelText: 'Correo electrónico',
            texto: _personaRequest.email,
            longitudMaximaTexto: 60,
          ),
          TextFieldWidget(
            labelText: 'Dirección',
            texto: _personaRequest.direccion,
            longitudMaximaTexto: 150,
          ),
          DropdownFieldWidget(
            valores: personaProvider.catEstadoCivil,
            valorPorDefecto: _personaRequest.idEstadoCivil,
            labelText: "Estado civil",
            handleValorSeleccionado: (valor) =>
                setState(() => _personaRequest.idEstadoCivil = valor),
          ),
          DropdownFieldWidget(
              valores: personaProvider.catDepartamento,
              labelText: "Departamento residencia",
              valorPorDefecto: _personaRequest.idDepartamento,
              handleValorSeleccionado: (valor) {
                setState(() {
                  _personaRequest.idDepartamento = valor;
                  personaProvider
                      .cargarMunicipios(_personaRequest.idDepartamento!);
                  _personaRequest.idMunicipio = null;
                });
              }),
          DropdownFieldWidget(
            valores: personaProvider.catMunicipio,
            valorPorDefecto: _personaRequest.idMunicipio,
            labelText: "Municipio residencia",
            handleValorSeleccionado: (valor) =>
                setState(() => _personaRequest.idMunicipio = valor),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: SizedBox(
                height: 55,
                width: double.infinity,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  child: const Text(
                    'Registrar',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () => handleRegistrarPersona(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget tipoNoIdentificacion() {
    return _personaRequest.idTipoDocIdentificacion == 1
        ? TextFieldWidget(
            labelText: 'CUI/DPI',
            texto: _personaRequest.cui,
            textoPermitido: r'^\d+$',
            longitudMaximaTexto: 13,
          )
        : TextFieldWidget(
            labelText: 'No. pasaporte',
            texto: _personaRequest.noIdentificacion,
            longitudMaximaTexto: 20,
          );
  }

  List<Widget> apellidoDeCasada() {
    return _personaRequest.idSexo == null || _personaRequest.idSexo == 2
        ? []
        : [
            TextFieldWidget(
              labelText: 'Apellido casada',
              texto: _personaRequest.apellidoCasada,
              textoPermitido: '[A-ZÁÉÍÓÚÑa-záéíóúñÀÈÌÒÙàèìòù]',
              longitudMaximaTexto: 50,
            )
          ];
  }

  List<Widget> fechaDeNacimiento() {
    return [
      Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 25.0),
          child: Column(
            children: [
              Row(
                children: [
                  tituloSeccion(
                      titulo: 'Fecha de nacimiento', icon: Icons.date_range),
                  ElevatedButton(
                    onPressed: mostrarDatePickerFechaNacimiento,
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                    ),
                    child: const Icon(Icons.search),
                  ),
                ],
              ),
              Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        _personaRequest.fechaNacimiento == null
                            ? ''
                            : '${_personaRequest.fechaNacimiento?.day}/${_personaRequest.fechaNacimiento?.month}/${_personaRequest.fechaNacimiento?.year}',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    ];
  }

  bool habilitarNacionalidad() {
    return !(_personaRequest.idNacionalidad == 31 &&
        _personaRequest.idTipoDocIdentificacion == 1);
  }

  void mostrarDatePickerFechaNacimiento() async {
    final DateTime? fechaSeleccionada = await showDatePicker(
      context: context,
      initialDate: _personaRequest.fechaNacimiento ?? DateTime.now(),
      firstDate: DateTime(1920, 1, 1),
      lastDate: DateTime.now(),
      // locale: Locale('es', 'ES'),
    );

    if (fechaSeleccionada != null) {
      setState(() {
        _personaRequest.fechaNacimiento = fechaSeleccionada;
      });
    }
  }

  Widget tituloSeccion({required String titulo, required IconData icon}) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            icon,
            size: 25,
          ),
        ),
        Text(
          titulo,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        )
      ],
    );
  }

  mostrarNotificacion(BuildContext context, String texto) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(texto)));
  }
}
