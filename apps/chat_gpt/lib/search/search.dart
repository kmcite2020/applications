import 'package:flutter/material.dart';
import '../core/core.dart';
import '../chats/drawer.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class SearchPage extends ReactiveStatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SearchBar(
            hintText: 'Search',
            leading: BackButton(),
            elevation: MaterialStatePropertyAll(1),
          ).pad(),
          const HistoryListView(),
        ],
      ),
    );
  }
}
