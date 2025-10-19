import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/home_screen.dart';
import 'config/firebase_options.dart'; // placeholder, replace with generated options

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MehrshahrMelkApp());
}

class MehrshahrMelkApp extends StatelessWidget {
  const MehrshahrMelkApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'مهرشهرملک',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('fa')],
      locale: const Locale('fa'),
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        fontFamily: 'Vazir', // replace with included Persian font if desired
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
