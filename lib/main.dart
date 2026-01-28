import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'services/firebase_options.dart';
// Imports for feature folders
import 'features/dashboard/dashboard_screen.dart';
import 'features/auth/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const AuraApp());
}

class AuraApp extends StatelessWidget {
  const AuraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
      title: 'AURA VHC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.teal, // AURA's primary color
=======
      title: 'AURA Setup ',
      // REMOVED 'const' from here because the home page
      // might use Firebase values that aren't constant
      home: ConnectionTestPage(),
    );
  }
}

class ConnectionTestPage extends StatelessWidget {
  // REMOVED 'const' from this constructor as well
  const ConnectionTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AURA Setup Test')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            try {
              await FirebaseFirestore.instance
                  .collection('connection_test')
                  .add({'status': 'Connected!', 'timestamp': DateTime.now()});
              print("✅ Success!");
            } catch (e) {
              print("❌ Error: $e");
            }
          },
          child: const Text('Test Connection'),
        ),
>>>>>>> 4093749269b35bc2f1b2ebf97a28ee50661afeb7
      ),
      // Set the initial screen (Login or Dashboard)
      home: const DashboardScreen(),
    );
  }
}
