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
                  mainPagesRM(MainPages.home);
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
                        initialValue: settingsRM().userName,
                        onChanged: settingsRM.setUserName,
                        onEditingComplete: RM.navigate.back,
                      ),
                    ),
                  );
                },
                tabs: [
                  Tab(
                    text: settingsRM().userName,
                  ),
                ],
                // overlayColor: MaterialStateProperty.all(Colors.transparent),
              ),
          centerTitle: true,
        ).pad(),
      ),
    ),
  );
}
