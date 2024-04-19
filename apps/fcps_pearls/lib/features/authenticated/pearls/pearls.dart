// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../../../main.dart';
import '../authenticated.dart';

part 'pearls.freezed.dart';

class PearlsPage extends UI {
  const PearlsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            authenticatedPageRM(AuthenticatedPage.home);
          },
          icon: Icon(Icons.home),
        ),
        title: Text('Pearls'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: ListView.builder(
          controller: ScrollController(),
          itemCount: pearlsRM().length,
          itemBuilder: (context, index) {
            final pearl = pearlsRM()[index];
            return ListTile(
              leading: CircleAvatar(
                child: (index + 1).text(),
              ),
              onTap: pearlsRM.injected.isWaiting
                  ? null
                  : () {
                      // navigator.to(
                      //   PearlDetailsPage(id: pearl.id),
                      // );
                      pearlsPageRM(
                        PearlPageState(
                          page: PearlPage.pearlDetails,
                          id: pearl.id,
                        ),
                      );
                    },
              title: pearl.statement.text().pad(),
            ).pad();
          },
        ),
      ),
    );
  }
}

enum PearlPage { pearls, editPearl, pearlDetails }

final pearlsPageRM = Simple(PearlPageState(page: PearlPage.pearls));

@freezed
class PearlPageState with _$PearlPageState {
  const factory PearlPageState({
    @Default(PearlPage.pearls) final PearlPage page,
    final String? id,
  }) = _PearlPageState;
}
