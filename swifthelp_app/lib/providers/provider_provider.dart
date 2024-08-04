import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../models/provider_model.dart';

class ProviderProvider extends ChangeNotifier {
  static List<ProviderModel> _providersList = [];
  List<ProviderModel> get getProviders {
    return _providersList;
  }

  ProviderModel findProById(String productId) {
    return _providersList.firstWhere((element) => element.id == productId);
  }

  List<ProviderModel> searchQuery(String searchText) {
    List<ProviderModel> _searchList = _providersList
        .where((element) =>
            element.name.toLowerCase().contains(searchText.toLowerCase()))
        .toList();
    return _searchList;
  }

  Future<void> fetchProviders() async {
    try {
      final QuerySnapshot providerSnapshot =
          await FirebaseFirestore.instance.collection('providers').get();
      _providersList.clear();
      providerSnapshot.docs.forEach((element) {
        _providersList.insert(
          0,
          ProviderModel(
            id: element.get('id'),
            name: element.get('name'),
            address: element.get('shipping-address'),
          ),
        );
      });

      notifyListeners();
    } catch (e) {
      print('Error in fetchProviders: $e');
    }
  }
}
