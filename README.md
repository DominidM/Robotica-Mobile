# Robotica-Mobile

Proyecto Flutter para el robot **Dimsor** de la línea Robotica.

Este repositorio contiene la aplicación móvil desarrollada en Flutter, utilizada para controlar, monitorear y gestionar el robot Dimsor.

---

## Tecnologías utilizadas

- **Flutter**: 3.32.8 (canal stable)
- **Dart**: 3.8.1
- **DevTools**: 2.45.1

> Verifica tu versión local ejecutando `flutter --version`.

---

## Repositorios relacionados

- [Robotica (firmware principal)](https://github.com/DominidM/Robotica)
- [Robotica-Web (interfaz web)](https://github.com/DominidM/Robotica-Web)

---

## Estructura del repositorio

```
Robotica-Mobile/
├── src/
│   └── dimsor/         # Proyecto Flutter principal
│       ├── lib/
│       ├── android/
│       ├── ios/
│       ├── ...
├── README.md
├── LICENSE
└── ...
```

---

## Instalación y ejecución

1. **Clona el repositorio:**
   ```sh
   git clone https://github.com/DominidM/Robotica-Mobile.git
   cd Robotica-Mobile/src/dimsor
   ```

2. **Instala dependencias:**
   ```sh
   flutter pub get
   ```

3. **Ejecuta la aplicación:**
   - En emulador o dispositivo físico Android/iOS:
     ```sh
     flutter run
     ```
   - En modo web (Edge, Chrome, etc):
     ```sh
     flutter run -d chrome
     ```

---

## Requisitos

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Dart SDK](https://dart.dev/get-dart)
- Un editor como [VS Code](https://code.visualstudio.com/) o [Android Studio](https://developer.android.com/studio)
- (Opcional) Visual Studio con herramientas de C++ para ejecutar en Windows

---

## Contribución

Las contribuciones son bienvenidas. Por favor, abre un issue o un pull request para sugerencias, mejoras o reporte de errores.

---

## Licencia

Este proyecto está bajo la licencia [MIT](LICENSE).

---

## Créditos

Desarrollado por DominidM para el ecosistema Robotica y el robot Dimsor.
