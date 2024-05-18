# flutter_boiler

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)


For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

----SECCION IDENTIFICACION VIVIENDA
--ID_MUNICIPIO --- MUNICIPIO
--IDLP --- LUGAR POBLADO
--IDAS --- ÁREA SALUD
--IDDS --- DISTRITO SALUD
--IDTS --- DESCRIPCION SERVICIO
--IDCC --- CENTRO COMUNICARIO
--IDC  --- COMUNIDAD

SELECT * FROM SEGURIDAD_MSPAS.TC_DEPARTAMENTO;--
SELECT * FROM SEGURIDAD_MSPAS.TC_MUNICIPIO;-- dp **
SELECT * FROM SEGURIDAD_MSPAS.TC_LUGAR_POBLADO;--dp, mun **
SELECT * FROM SEGURIDAD_MSPAS.TC_AREA_SALUD;--dp **
SELECT * FROM SEGURIDAD_MSPAS.TC_DISTRITO_SALUD;-- idas **
SELECT * FROM SEGURIDAD_MSPAS.TC_DESCRIPCION_SERVICIO; --idsa, idds **
SELECT * FROM SEGURIDAD_MSPAS.TC_CENTRO_COMUNITARIO; --idas, idds, idts **
SELECT * FROM SEGURIDAD_MSPAS.TC_TERRITORIO; --idas, idds, idts **
SELECT * FROM SEGURIDAD_MSPAS.TC_SECTOR; --id_territorio **
SELECT * FROM SEGURIDAD_MSPAS.TC_COMUNIDAD; --idas, idds, idts, id_sector **