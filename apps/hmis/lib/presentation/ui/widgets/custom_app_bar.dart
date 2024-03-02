import 'package:manager/manager.dart';

PreferredSize customAppBar({
  String title = 'NONE',
  Widget? leading,
  PreferredSizeWidget? bottom,
  void Function()? onDoubleTap,
}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(130),
    child: GestureDetector(
      onDoubleTap: onDoubleTap,
      child: DefaultTabController(
        length: 1,
        child: AppBar(
          title: title.text(),
          automaticallyImplyLeading: false,
          leading: leading,
          bottom: bottom ??
              TabBar(
                onTap: (x) {
                  RM.navigate.toDialog(
                    AlertDialog(
                      title: 'User'.text(),
                      content: TextFormField(
                          // initialValue: settingsBloc.getUser,
                          // onChanged: settingsBloc.setUserName,
                          // onEditingComplete: navigator.back,
                          ),
                    ),
                  );
                },
                tabs: [
                  Tab(
                    text: "settingsBloc.getUser",
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
