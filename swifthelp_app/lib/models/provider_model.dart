import 'package:flutter/material.dart';

class ProviderModel with ChangeNotifier {
  final String id, name, address;

  ProviderModel(
      {required this.id,
      required this.name,
      required this.address,});
}
