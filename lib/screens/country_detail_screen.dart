import 'package:country_app/models/county.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CountryDetailScreen extends StatelessWidget {
  final Country country;

  const CountryDetailScreen({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(country.name.common)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(imageUrl: country.flags.png),
            const SizedBox(height: 16),
            Text('Official Name: ${country.name}',
                style: const TextStyle(fontSize: 18)),
            Text('Capital: ${country.capital}', style: TextStyle(fontSize: 18)),
            Text('Region: ${country.region}', style: TextStyle(fontSize: 18)),
            Text('Population: ${country.population}',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            const Text('Languages:', style: TextStyle(fontSize: 18)),
            ...country.languages.values
                .map((language) => Text(language))
                .toList(),
          ],
        ),
      ),
    );
  }
}
