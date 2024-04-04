import 'package:manager/manager.dart';

class AuthErrorUI extends UI {
  const AuthErrorUI({
    Key? key,
    required this.error,
    required this.stackTrace,
  }) : super(key: key);
  final String error;
  final String stackTrace;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          'Errors happened'.text(textScaleFactor: 2).pad(),
          // '${loginStateRM().error}'.text(scale: 2).pad(),
          ElevatedButton(
            onPressed: () {},
            child: 'Try Again'.text(textScaleFactor: 2).pad(),
          ).pad(),
        ],
      ),
    );
  }
}
