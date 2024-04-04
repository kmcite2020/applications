import 'package:manager/manager.dart';

enum UnAuthenticatedPage { login, register }

final unAuthenticatedPageRM = RM(() => UnAuthenticatedPage.login);
