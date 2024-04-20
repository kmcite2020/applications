import 'dart:io';

import 'package:manager/manager.dart';
import 'package:memories/create_memory_page.dart';
import 'package:memories/memories/memory.dart';

class DashboardPage extends UI {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Memories'.text(),
      ),
      body: Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => toDialog(
          CreateMemoryPage(),
        ),
        child: Icon(Icons.image),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationIndexRM(),
        onDestinationSelected: navigationIndexRM,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.dashboard),
            label: 'Dashnoard',
          ),
          NavigationDestination(
            icon: Icon(Icons.memory),
            label: 'Memories',
          ),
        ],
      ),
    );
  }
}

final navigationIndexRM = Simple<int>(
  0,
  serializer: Serializer(
    key: 'navigationIndex',
    fromJson: (json) => 0,
  ),
);

class MemoryTile extends UI {
  final Memory memory;
  const MemoryTile({
    super.key,
    required this.memory,
  });
  @override
  Widget build(BuildContext context) {
    final image = Image.file(File(''));
    return image;
  }
}
