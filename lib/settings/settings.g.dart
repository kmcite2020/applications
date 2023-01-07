// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

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

String _$CurrentAppValueHash() => r'0ad7cec64c925b6f669b620722c20f4e258744da';

/// See also [CurrentAppValue].
final currentAppValueProvider =
    AutoDisposeNotifierProvider<CurrentAppValue, dynamic>(
  CurrentAppValue.new,
  name: r'currentAppValueProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$CurrentAppValueHash,
);
typedef CurrentAppValueRef = AutoDisposeNotifierProviderRef<dynamic>;

abstract class _$CurrentAppValue extends AutoDisposeNotifier<dynamic> {
  @override
  dynamic build();
}

String _$currentAppHash() => r'db787e7ee0755c9c60f7e2e0fbff341f06d0b2f9';

/// See also [currentApp].
class CurrentAppProvider extends AutoDisposeProvider<Widget> {
  CurrentAppProvider(
    this.availableApps,
  ) : super(
          (ref) => currentApp(
            ref,
            availableApps,
          ),
          from: currentAppProvider,
          name: r'currentAppProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$currentAppHash,
        );

  final AvailableApps availableApps;

  @override
  bool operator ==(Object other) {
    return other is CurrentAppProvider && other.availableApps == availableApps;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, availableApps.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef CurrentAppRef = AutoDisposeProviderRef<Widget>;

/// See also [currentApp].
final currentAppProvider = CurrentAppFamily();

class CurrentAppFamily extends Family<Widget> {
  CurrentAppFamily();

  CurrentAppProvider call(
    AvailableApps availableApps,
  ) {
    return CurrentAppProvider(
      availableApps,
    );
  }

  @override
  AutoDisposeProvider<Widget> getProviderOverride(
    covariant CurrentAppProvider provider,
  ) {
    return call(
      provider.availableApps,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'currentAppProvider';
}
