class ApiConstants {
  static const int status = 200;
  static const bool success = true;
  static const String message = "Éxito en la obtención de los datos.";
  static const String error = "";

  static const List<Map<String, dynamic>> data = [
    {
      "id_estado_ficha": 1,
      "descripcion": "Pendiente de supervisión",
      "estado_registro": 1,
      "id_usuario_registro": 1,
      "fecha_registro": "2024-03-20T17:27:20"
    },
    {
      "id_estado_ficha": 2,
      "descripcion": "Aprobada",
      "estado_registro": 1,
      "id_usuario_registro": 1,
      "fecha_registro": "2024-03-20T17:27:23"
    },
    {
      "id_estado_ficha": 3,
      "descripcion": "Rechazada",
      "estado_registro": 1,
      "id_usuario_registro": 1,
      "fecha_registro": "2024-03-20T17:27:26"
    }
  ];
}
