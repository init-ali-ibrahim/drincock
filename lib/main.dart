import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drinkt_q/app.dart';
import 'package:drinkt_q/core/dependency/eazy_localization_widget.dart';
import 'package:drinkt_q/core/dependency/init.dart';

Future<void> main() async {
  await AppInit.initialize();

  runApp(easyLocalizationWidget(const ProviderScope(child: App())));
}
