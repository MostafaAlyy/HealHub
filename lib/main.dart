import 'app.dart';
import 'package:flutter/material.dart';
import 'bloc_observer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await serviceLocatorInit();
  Bloc.observer = AppBlocObserver();
  runApp(const HealHubApp());
}
