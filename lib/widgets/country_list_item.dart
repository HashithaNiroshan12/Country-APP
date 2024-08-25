import 'package:cached_network_image/cached_network_image.dart';
import 'package:country_app/models/county.dart';
import 'package:country_app/screens/country_detail_screen.dart';
import 'package:flutter/material.dart';


class CountryListItem extends StatelessWidget {
  final Country country;

  const CountryListItem({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CachedNetworkImage(
        imageUrl: country.flags.png,
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
      title: Text(country.name.common),
      subtitle: Text(country.capital.isNotEmpty ? country.capital.first : ''),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CountryDetailScreen(country: country),
          ),
        );
      },
    );
  }
}
