import 'package:country_app/providers/country_provider.dart';
import 'package:country_app/widgets/country_list_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountryListScreen extends StatelessWidget {
  const CountryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('European Countries'),
        actions: [
          PopupMenuButton<SortBy>(
            onSelected: (SortBy sortBy) {
              context.read<CountryProvider>().sortCountries(sortBy);
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                  value: SortBy.name, child: Text('Sort by Name')),
              const PopupMenuItem(
                  value: SortBy.capital, child: Text('Sort by Capital')),
              const PopupMenuItem(
                  value: SortBy.population, child: Text('Sort by Population')),
            ],
          ),
        ],
      ),
      body: Consumer<CountryProvider>(
        builder: (context, provider, child) {
          if (provider.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (provider.errorMessage.isNotEmpty) {
            return Center(child: Text(provider.errorMessage));
          }

          return ListView.builder(
            itemCount: provider.countries.length,
            itemBuilder: (context, index) {
              return CountryListItem(country: provider.countries[index]);
            },
          );
        },
      ),
    );
  }
}
