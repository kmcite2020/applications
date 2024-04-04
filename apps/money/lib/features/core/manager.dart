
// class _Created<T> extends ReactiveModelImp {
//   String? tag;
//   T? _base;
//   T get state => _base!;
//   final listeners = <void Function(_Created _created)>[];

//   /// tag should be given if you want to register this in sl.
//   /// ```dart
//   /// final createdRM = sl(name: 'rm');
//   /// ```
//   _Created({
//     required super.creator,
//     this.tag,
//     super.initialState,
//     super.autoDisposeWhenNotUsed = false,
//     super.stateInterceptorGlobal,
//   }) {
//     sl.create(this);
//   }
//   T call([T? newState]) {
//     if (newState != null) state = newState;
//     return state;
//   }
// }

// _Created<T> obs<T>(T Function() creator) => _Created(creator: creator);

// final selenaRM = obs<String>(() => 'null');

// final sl = _Createds();

// final created = (
//   _Created(
//     creator: () => 0,
//   ),
// );

// class _Createds {
//   static final _ = _Createds();
//   factory _Createds() => _;
//   final Map<String, _Created> _createds = {};
//   _Created<T> create<T>(
//     _Created<T> _created, {
//     String? name,
//   }) {
//     if (name != null) {
//       _createds[name] = _created;
//       return _createds[name]! as _Created<T>;
//     } else {
//       final tag = _created.tag;
//       if (tag != null) {
//         _createds[tag] = _created;
//         return _createds[name]! as _Created<T>;
//       } else {
//         print('can not register');
//       }
//     }
//     return _created;
//   }

//   _Created<T> call<T>(String tag) {
//     return _createds[tag] as _Created<T>;
//   }
// }
