import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode, // Activo solo en debug/web
      builder: (context) => const DimsorApp(),
    ),
  );
}

class DimsorApp extends StatelessWidget {
  const DimsorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true, // Necesario para device_preview
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      title: 'Dimsor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF23242A),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.cyanAccent,
          brightness: Brightness.dark,
          background: const Color(0xFF23242A),
        ),
        fontFamily: 'Montserrat',
      ),
      home: const DimsorHomePage(),
    );
  }
}

class DimsorHomePage extends StatefulWidget {
  const DimsorHomePage({Key? key}) : super(key: key);

  @override
  State<DimsorHomePage> createState() => _DimsorHomePageState();
}

class _DimsorHomePageState extends State<DimsorHomePage> {
  int _selectedIndex = 1; // Test tab por defecto

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _selectedIndex == 1
            ? _buildTestScreen(context)
            : _buildOtherScreen(context, _selectedIndex),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildTestScreen(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Título principal
          const SizedBox(height: 10),
          Center(
            child: Text(
              'DIMSOR',
              style: TextStyle(
                color: Colors.cyanAccent,
                fontWeight: FontWeight.bold,
                fontSize: 28,
                letterSpacing: 3,
              ),
            ),
          ),
          const SizedBox(height: 12),
          // Subtítulo
          Center(
            child: Text(
              'cámara tiempo real',
              style: TextStyle(
                color: Colors.cyanAccent,
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
            ),
          ),
          const SizedBox(height: 22),
          // Recuadro de cámara
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF2E2F36),
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: Colors.cyanAccent, width: 3),
              ),
              child: const Center(
                child: Icon(Icons.videocam, color: Colors.cyanAccent, size: 56),
              ),
            ),
          ),
          const SizedBox(height: 22),
          // Resultado del test
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color(0xFF2E2F36),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.cyanAccent, width: 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Resultado del Test Psicológico:",
                  style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Test psicológico: Promedio de puntuación 7.40",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildOtherScreen(BuildContext context, int index) {
    // Puedes personalizar estas pantallas si lo deseas
    String text;
    IconData icon;
    if (index == 0) {
      text = "Cámara";
      icon = Icons.videocam;
    } else {
      text = "Info";
      icon = Icons.info_outline;
    }
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 60, color: Colors.cyanAccent),
          const SizedBox(height: 20),
          Text(
            text,
            style: const TextStyle(
              color: Colors.cyanAccent,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFF23242A),
      elevation: 10,
      selectedItemColor: Colors.cyanAccent,
      unselectedItemColor: Colors.white60,
      currentIndex: _selectedIndex,
      onTap: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.videocam),
          label: 'Cámara',
        ),
        BottomNavigationBarItem(
          icon: Stack(
            alignment: Alignment.center,
            children: [
              if (_selectedIndex == 1)
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.redAccent,
                        blurRadius: 16,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                ),
              const Icon(Icons.sports_esports),
            ],
          ),
          label: 'Test',
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.info_outline),
          label: 'Info',
        ),
      ],
    );
  }
}
