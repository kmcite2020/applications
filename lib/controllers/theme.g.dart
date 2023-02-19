// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$themeDataHash() => r'15211e679bac45cf793ee741445617aa65f04904';

/// See also [themeData].
class ThemeDataProvider extends AutoDisposeProvider<ThemeData> {
  ThemeDataProvider({
    required this.dark,
  }) : super(
          (ref) => themeData(
            ref,
            dark: dark,
          ),
          from: themeDataProvider,
          name: r'themeDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$themeDataHash,
        );

  final bool dark;

  @override
  bool operator ==(Object other) {
    return other is ThemeDataProvider && other.dark == dark;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dark.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef ThemeDataRef = AutoDisposeProviderRef<ThemeData>;

/// See also [themeData].
final themeDataProvider = ThemeDataFamily();

class ThemeDataFamily extends Family<ThemeData> {
  ThemeDataFamily();

  ThemeDataProvider call({
    required bool dark,
  }) {
    return ThemeDataProvider(
      dark: dark,
    );
  }

  @override
  AutoDisposeProvider<ThemeData> getProviderOverride(
    covariant ThemeDataProvider provider,
  ) {
    return call(
      dark: provider.dark,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'themeDataProvider';
}
