import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dio/dio.dart';
import 'screens/country_list_screen.dart';
import 'providers/country_provider.dart';
import 'services/api_service.dart';

void main() {
  final dio = Dio();
  final apiService = ApiService(dio);

  runApp(MyApp(apiService: apiService));
}

class MyApp extends StatelessWidget {
  final ApiService apiService;

  const MyApp({super.key, required this.apiService});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CountryProvider(apiService)..fetchCountries(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Country List',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const CountryListScreen(),
      ),
    );
  }
}
