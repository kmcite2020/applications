export 'package:manager/manager.dart';

import 'package:ideal_store/features/shared/utils.dart';

import 'main.dart';

export 'dart:convert';
export 'package:colornames/colornames.dart';
export 'package:file_picker/file_picker.dart';
export 'package:flex_color_scheme/flex_color_scheme.dart';
export 'package:flutter/services.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:ideal_store/assets/licenses.dart';
export 'package:ideal_store/features/customers/components/customer_builder.dart';
export 'package:ideal_store/features/customers/components/customer_tile.dart';
export 'package:ideal_store/features/customers/customer.dart';
export 'package:ideal_store/features/customers/pages/customer_page.dart';
export 'package:ideal_store/features/customers/pages/customers_page.dart';
export 'package:ideal_store/features/dashboard/dashboard_page.dart';
export 'package:ideal_store/features/orders/pages/order_page.dart';
export 'package:ideal_store/features/orders/pages/orders_page.dart';
export 'package:ideal_store/features/products/components/product_builder.dart';
export 'package:ideal_store/features/products/components/product_tile.dart';
export 'package:ideal_store/features/products/pages/product_page.dart';
export 'package:ideal_store/features/products/pages/products_page.dart';
export 'package:ideal_store/features/products/product.dart';
export 'package:ideal_store/features/settings/components/fonts_ui.dart';
export 'package:ideal_store/features/settings/components/material_colors_ui.dart';
export 'package:ideal_store/features/settings/components/theme_modes_ui.dart';
export 'package:ideal_store/features/settings/pages/settings_page.dart';
export 'package:ideal_store/features/settings/settings.dart';
export 'package:ideal_store/features/settings/settings_controller.dart';
export 'package:ideal_store/features/shared/cities.dart';
export 'package:ideal_store/features/shared/extensions.dart';
export 'package:ideal_store/features/shared/router.dart';
export 'package:ideal_store/features/shared/theme_manager.dart';
export 'package:path_provider/path_provider.dart';
export 'package:uuid/uuid.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RM.storageInitializer(HiveStorage());
  await imageRM.refresh();
  GoogleFonts.config.allowRuntimeFetching = false;
  addLicenses();

  runApp(App());
}

class App extends TopUI {
  @override
  Widget homePage(BuildContext context) {
    return MaterialApp(
      navigatorKey: RM.navigate.navigatorKey,
      home: DashboardPage(),
      debugShowCheckedModeBanner: false,
      theme: theme,
      darkTheme: darkTheme,
      themeMode: settingsRM().themeMode,
    );
  }
}
