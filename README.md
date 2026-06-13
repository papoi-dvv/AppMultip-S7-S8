# Flutter People Manager - V2

Aplicacion Flutter de gestion de personas desarrollada para el Laboratorio de la Semana 9. La interfaz fue migrada a componentes nativos de Cupertino para ofrecer una experiencia visual inspirada en iOS, con una identidad Sakura/Washi minimalista centralizada en `lib/styles.dart`.

## Caracteristicas

- **Login seguro:** validacion de correo y contrasena antes del acceso.
- **UI Cupertino:** uso de `CupertinoApp`, `CupertinoPageScaffold`, `CupertinoNavigationBar`, `CupertinoFormSection`, `CupertinoTextFormFieldRow`, `CupertinoButton`, `CupertinoListSection` y `CupertinoListTile`.
- **Menu principal:** navegacion por rutas nombradas hacia registro, lista y perfil.
- **Registro de personas:** formulario con nombre, edad, usuario, DNI, telefono y fecha de nacimiento mediante `CupertinoDatePicker`.
- **Listado en memoria:** personas almacenadas temporalmente en `AppData.personasRegistradas`.
- **Detalle de usuario:** vista individual con edad, DNI, telefono y fecha de nacimiento.
- **Edicion de usuarios:** cada persona registrada puede actualizarse desde su pantalla de detalle.
- **Perfil propio editable:** permite modificar el nombre de usuario y correo de la sesion.
- **Marca de tiempo:** conserva fecha y hora del ultimo acceso.
- **Cerrar sesion:** vuelve al login reemplazando la ruta actual.

## Estructura del Proyecto

- `lib/main.dart`: contiene las pantallas, rutas, estado global temporal (`AppData`), modelo `Person`, registro, detalle, edicion y perfil.
- `lib/styles.dart`: centraliza paleta Sakura, tema `CupertinoThemeData`, tipografias, decoraciones, botones e iconografia de la aplicacion.
- `pubspec.yaml`: configuracion base del proyecto Flutter.
- `test/`: pruebas generadas por la plantilla de Flutter.

## Flujo de Pantallas

1. **Acceso:** login con validacion obligatoria y estilo iOS.
2. **Menu:** accesos a registro, lista y perfil.
3. **Registro:** formulario Cupertino con selector de fecha de nacimiento.
4. **Lista:** muestra todas las personas registradas en memoria.
5. **Detalle:** permite revisar informacion completa de cada persona.
6. **Edicion:** permite actualizar personas ya registradas.
7. **Perfil:** muestra y edita los datos del usuario de sesion.

## Instalacion y Uso

```bash
flutter pub get
flutter run
```

Para analizar el proyecto:

```bash
flutter analyze
```

## Notas Tecnicas

- La persistencia es temporal en memoria; los datos se reinician al cerrar la app.
- El proyecto evita widgets Material en `lib/main.dart` para mantener compatibilidad con la estetica Cupertino.
- Los estilos visuales se consumen desde `AppStyles`, `AppColors`, `AppTextStyles`, `AppDecorations` y clases auxiliares definidas en `lib/styles.dart`.

## Creditos

Desarrollado por **papoi-dvv** con apoyo de **Codex** como colaborador tecnico.
