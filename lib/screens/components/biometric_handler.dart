import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

// Add check for biometric
class BiometricHandler extends StatefulWidget {
  final Widget child;
  const BiometricHandler({super.key, required this.child});

  @override
  State<BiometricHandler> createState() => _BiometricHandlerState();
}

class _BiometricHandlerState extends State<BiometricHandler> {
  bool isAuthenticated = false;
  final auth = LocalAuthentication();

  @override
  void initState() {
    authenticate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (isAuthenticated) return widget.child;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }

  Future<void> authenticate() async {
    try {
      final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;
      final bool canAuthenticate =
          canAuthenticateWithBiometrics || await auth.isDeviceSupported();
      if (!canAuthenticate) {
        setState(() {
          isAuthenticated = true;
        });
        return;
      }
      bool didAuthenticate = await auth.authenticate(
        localizedReason: 'Please authenticate to use the app',
      );
      if (didAuthenticate) {
        setState(() {
          isAuthenticated = true;
        });
      } else {
        authenticate();
      }
    } catch (e) {
      setState(() {
        isAuthenticated = true;
      });
    }
  }
}
