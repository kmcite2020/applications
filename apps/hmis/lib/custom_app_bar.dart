import 'package:hmis/main.dart';

PreferredSize customAppBar({
  String title = 'NONE',
  Widget? leading,
  PreferredSizeWidget? bottom,
  void Function()? onDoubleTap,
}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(130),
    child: GestureDetector(
      onDoubleTap: onDoubleTap,
      child: DefaultTabController(
        length: 1,
        child: AppBar(
          title: title.text(textScaleFactor: 1.2),
          automaticallyImplyLeading: false,
          leading: leading ??
              IconButton(
                onPressed: () {
                  setMainPages(MainPages.home);
                },
                icon: const FaIcon(FontAwesomeIcons.house),
              ),
          bottom: bottom ??
              TabBar(
                onTap: (_) {
                  RM.navigate.toDialog(
                    AlertDialog(
                      title: 'User'.text(),
                      content: TextFormField(
                        initialValue: settings.userName,
                        onChanged: setUserName,
                        onEditingComplete: RM.navigate.back,
                      ),
                    ),
                  );
                },
                tabs: [
                  Tab(
                    text: settings.userName,
                  ),
                ],
                overlayColor: MaterialStateProperty.all(Colors.transparent),
              ),
          centerTitle: true,
        ).pad(),
      ),
    ),
  );
}
