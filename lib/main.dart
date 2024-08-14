import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Model:'),
              SizedBox(
                height: 400,
                child: Card(
                    elevation: 0,
                    child: Flutter3DViewer(
                        src: 'assets/models/DamagedHelmet.glb')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//! for web add this line in web/index.html in the <head> section:
//! <script type="module" src="./assets/packages/flutter_3d_controller/assets/model-viewer.min.js" defer></script>

//! if 3d is not rendered check the package readme: https://pub.dev/packages/flutter_3d_controller
