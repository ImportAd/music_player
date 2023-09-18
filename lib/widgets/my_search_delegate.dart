import 'package:flutter/material.dart';
import 'package:peace_img/widgets/song_list.dart';
import 'package:peace_img/config/colors.dart';

//  ToDo: До разобраться с этим
// изменить тему

class MySearchDelegate extends SearchDelegate {
  List<String> searchResult = [
    "Speak to me",
    "Breathe in the air",
    "On the run",
    "Time",
    "The great gig in the sky",
    "Money",
    "Us and them",
    "Any colour you like",
    "Brain damage",
    "Eclipse",
  ];

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        color: AppColors.backgroundBlack,
        // backgroundColor: AppColors.backgroundallBlack,
      ),
    );
  }

  @override
  Widget buildLeading(BuildContext context) => IconButton(
        onPressed: () => close(context, null),
        icon: const Icon(Icons.arrow_back),
      );

  @override
  List<Widget> buildActions(BuildContext context) => <Widget>[
        IconButton(
            onPressed: () {
              query = "";
            },
            icon: const Icon(Icons.clear))
      ];

  @override
  Widget buildResults(BuildContext context) => const Text('results');

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResult.where((searchResult) {
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();
    return Container(
      color: AppColors.backgroundBlack,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: suggestions.length,
          itemBuilder: (context, index) {
            final suggestion = suggestions[index];

            // Переиспользование кастомного виджета
            // Выводит список композиций с заданными параметрами:
            return SongList(songName: suggestion, artistName: "artistName");
          },
        ),
      ),
    );
  }
}
