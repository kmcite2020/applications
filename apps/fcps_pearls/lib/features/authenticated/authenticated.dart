import 'package:manager/manager.dart';

enum AuthenticatedPage { home, settings, exam, studio, study, pearls }

final authenticatedPageRM = RM(() => AuthenticatedPage.home);
