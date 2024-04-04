import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

void addLicenses() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('fonts/Azeret_Mono/OFL.txt');
    yield LicenseEntryWithLineBreaks(['Azeret_Mono'], license);
  });
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('fonts/Comfortaa/OFL.txt');
    yield LicenseEntryWithLineBreaks(['Comfortaa'], license);
  });
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('fonts/DM_Mono/OFL.txt');
    yield LicenseEntryWithLineBreaks(['DM_Mono'], license);
  });
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('fonts/Dosis/OFL.txt');
    yield LicenseEntryWithLineBreaks(['Dosis'], license);
  });
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('fonts/Fira_Sans/OFL.txt');
    yield LicenseEntryWithLineBreaks(['Fira_Sans'], license);
  });
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('fonts/IBM_Plex_Mono/OFL.txt');
    yield LicenseEntryWithLineBreaks(['IBM_Plex_Mono'], license);
  });
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('fonts/Josefin_Sans/OFL.txt');
    yield LicenseEntryWithLineBreaks(['Josefin_Sans'], license);
  });
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('fonts/Montserrat/OFL.txt');
    yield LicenseEntryWithLineBreaks(['Montserrat'], license);
  });
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('fonts/Space_Mono/OFL.txt');
    yield LicenseEntryWithLineBreaks(['Space_Mono'], license);
  });
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('fonts/Ubuntu/OFL.txt');
    yield LicenseEntryWithLineBreaks(['Ubuntu'], license);
  });
}
