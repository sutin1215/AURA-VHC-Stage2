import 'package:aura_vhc/services/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'services/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const AuraApp()); // This const is fine
}

class AuraApp extends StatelessWidget {
  const AuraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      ),
    );
  }
}
