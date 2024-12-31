import 'dart:convert';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

/// A utility class that provides various helper methods.
class Utils {
  /// Generates a random light color.
  static Color getRandomLightColor() {
    final random = Random();
    return Color.fromRGBO(
      200 + random.nextInt(56), // 200-255 for red
      200 + random.nextInt(56), // 200-255 for green
      200 + random.nextInt(56), // 200-255 for blue
      1,
    );
  }

  /// Generates a universally unique identifier (UUID).
  static String generateUuid() {
    return const Uuid().v4();
  }

  /// Initializes the Hydrated Storage for state management.
  ///
  /// This method configures the storage directory based on the platform
  /// (web or native) and sets up AES encryption using a predefined key.
  static Future<void> initHydratedStorage() async {
    var key = Uint8List.fromList(
      utf8.encode('419e11983f74863fd7e2ad5768ff4683'),
    );
    HydratedBloc.storage = await HydratedStorage.build(
        storageDirectory: kIsWeb
            ? HydratedStorage.webStorageDirectory
            : await getApplicationDocumentsDirectory(),
        encryptionCipher: HydratedAesCipher(key));
  }
}
