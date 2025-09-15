import 'package:disney/core/themes/app_color.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<String> _recentSearches = ['Mickey Mouse', 'Frozen', 'The Lion King'];
  List<String> _allMovies = [
    'Mickey Mouse',
    'Frozen',
    'The Lion King',
    'Moana',
    'Toy Story',
    'Finding Nemo',
    'Aladdin',
    'Beauty and the Beast',
    'Cinderella',
    'The Little Mermaid',
  ];
  List<String> _searchResults = [];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    _searchResult();
  }

  void _searchResult() {
    String query = _searchController.text.toLowerCase();
    setState(() {
      _searchResults = _allMovies
          .where((movie) => movie.toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blueDark,
      appBar: AppBar(
        backgroundColor: AppColor.blueDark,
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: AppColor.white10,
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            controller: _searchController,
            style: const TextStyle(color: AppColor.white),
            cursorColor: AppColor.white,
            decoration: InputDecoration(
              hintText: 'Search movies, shows, and more...',
              hintStyle: TextStyle(color: AppColor.white.withOpacity(0.7)),
              border: InputBorder.none,
              prefixIcon: const Icon(Icons.search, color: AppColor.white50),
              suffixIcon: _searchController.text.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.clear, color: AppColor.white50),
                      onPressed: () {
                        _searchController.clear();
                        setState(() {});
                      },
                    )
                  : null,
              contentPadding: const EdgeInsets.symmetric(vertical: 8),
            ),
            onChanged: (value) {
              // _onSearchChanged will handle setState
            },
          ),
        ),
      ),
      body: _searchController.text.isEmpty
          ? Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recent Searches',
                    style: TextStyle(
                      color: AppColor.white.withOpacity(0.8),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemCount: _recentSearches.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: const Icon(
                            Icons.history,
                            color: AppColor.white50,
                          ),
                          title: Text(
                            _recentSearches[index],
                            style: const TextStyle(color: AppColor.white),
                          ),
                          trailing: IconButton(
                            icon: const Icon(
                              Icons.close,
                              color: AppColor.white50,
                            ),
                            onPressed: () {
                              setState(() {
                                _recentSearches.removeAt(index);
                              });
                            },
                          ),
                          onTap: () {
                            _searchController.text = _recentSearches[index];
                            _searchResult(); // Trigger search for the recent item
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          : _searchResults.isEmpty && _searchController.text.isNotEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search_off,
                    color: AppColor.white.withOpacity(0.5),
                    size: 80,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'No results found for "${_searchController.text}"',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColor.white.withOpacity(0.7),
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Try searching for something else',
                    style: TextStyle(
                      color: AppColor.white.withOpacity(0.5),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: _searchResults.length,
              itemBuilder: (context, index) {
                return Card(
                  color: AppColor.white10,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: ListTile(
                    leading: const Icon(Icons.movie, color: AppColor.white),
                    title: Text(
                      _searchResults[index],
                      style: const TextStyle(
                        color: AppColor.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'A wonderful movie from Disney',
                      style: TextStyle(color: AppColor.white.withOpacity(0.7)),
                    ),
                    onTap: () {
                      // Handle tapping on a search result
                      print('Tapped on ${_searchResults[index]}');
                    },
                  ),
                );
              },
            ),
    );
  }
}
