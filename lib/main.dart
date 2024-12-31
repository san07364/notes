import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/screens/components/biometric_handler.dart';
import 'package:notes/utils/utils.dart';
import 'controllers/notes_controller.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialising hydrated storage for caching and saving data with encryption
  await Utils.initHydratedStorage();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BiometricHandler(
      child: BlocProvider(
        create: (context) => NotesCubit(),
        child: MaterialApp(
          title: 'Notes',
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(),
          themeMode: ThemeMode.light,
          home: HomeScreen(),
        ),
      ),
    );
  }
}
