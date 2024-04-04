import 'package:flutter/material.dart';
import 'package:doctor_on_duty/features/core/core.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'search_model.dart';

class SearchPage extends ReactiveStatelessWidget {
  static String path = '/search';
  const SearchPage({super.key});
  static final searchRM =
      RM.injectTextEditing(text: searchBloc.searchModel.search);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Search'.text(),
        leading: LeadingBackButton(),
      ),
      body: Column(
        children: [
          SearchBar(
            controller: searchRM.controller,
            focusNode: searchRM.focusNode..requestFocus(),
            onChanged: searchBloc.setSearch,
          ).pad(),
          Expanded(
            child: ListView.builder(
              itemCount: searchBloc.searchedTopics.length,
              itemBuilder: (context, index) {
                final topic = searchBloc.searchedTopics[index];
                return ListTile(
                  title: topic.text(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
