// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core.dart';

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

String _$listOfFilesHash() => r'ea98f5cbe871c7e37d53cdeb6f06a56c32467d90';

/// See also [listOfFiles].
class ListOfFilesProvider
    extends AutoDisposeFutureProvider<List<FileSystemEntity>> {
  ListOfFilesProvider(
    this.directory,
  ) : super(
          (ref) => listOfFiles(
            ref,
            directory,
          ),
          from: listOfFilesProvider,
          name: r'listOfFilesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$listOfFilesHash,
        );

  final Future<Directory> directory;

  @override
  bool operator ==(Object other) {
    return other is ListOfFilesProvider && other.directory == directory;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, directory.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef ListOfFilesRef = AutoDisposeFutureProviderRef<List<FileSystemEntity>>;

/// See also [listOfFiles].
final listOfFilesProvider = ListOfFilesFamily();

class ListOfFilesFamily extends Family<AsyncValue<List<FileSystemEntity>>> {
  ListOfFilesFamily();

  ListOfFilesProvider call(
    Future<Directory> directory,
  ) {
    return ListOfFilesProvider(
      directory,
    );
  }

  @override
  AutoDisposeFutureProvider<List<FileSystemEntity>> getProviderOverride(
    covariant ListOfFilesProvider provider,
  ) {
    return call(
      provider.directory,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'listOfFilesProvider';
}
