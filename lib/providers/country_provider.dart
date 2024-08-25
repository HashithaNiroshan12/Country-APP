import 'package:flutter/material.dart';
import 'package:country_app/models/county.dart';
import 'package:country_app/services/api_service.dart';

class CountryProvider extends ChangeNotifier {
  List<Country> _countries = [];
  bool _isLoading = true;
  String _errorMessage = '';

  List<Country> get countries => _countries;
  bool get isLoading => _isLoading;
  String get errorMessage => _errorMessage;

  final ApiService apiService;

  CountryProvider(this.apiService);

  Future<void> fetchCountries() async {
    try {
      _isLoading = true;
      notifyListeners();
      _countries = await apiService.getEuropeanCountries();
    } catch (e) {
      _errorMessage = 'Failed to load countries';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void sortCountries(SortBy sortBy) {
    switch (sortBy) {
      case SortBy.name:
        _countries.sort((a, b) => a.name.common.compareTo(b.name.common));
        break;
      case SortBy.capital:
        _countries.sort((a, b) => a.capital.first.compareTo(b.capital.first));
        break;
      case SortBy.population:
        _countries.sort((a, b) => b.population.compareTo(a.population));
        break;
    }
    notifyListeners();
  }
}

enum SortBy { name, capital, population }
