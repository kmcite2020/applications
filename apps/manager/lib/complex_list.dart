import 'dart:math';

import 'package:manager/manager.dart';

abstract class ComplexList<E> extends SimpleBase<List<E>> {
  ComplexList() : super([]);
  E operator [](int index);
  void operator []=(int index, E value);
  void set first(E value);
  void set last(E value);
  int get length;
  set length(int newLength);
  void add(E element) => state.add(element);
  void addAll(Iterable<E> iterable);
  Iterable<E> get reversed;
  void sort([int compare(E a, E b)?]);
  void shuffle([Random? random]);
  int indexOf(E element, [int start = 0]);
  int indexWhere(bool test(E element), [int start = 0]);
  int lastIndexWhere(bool test(E element), [int? start]);
  int lastIndexOf(E element, [int? start]);
  void clear();
  void insert(int index, E element);
  void insertAll(int index, Iterable<E> iterable);
  void setAll(int index, Iterable<E> iterable);
  bool remove(Object? value);
  E removeAt(int index);
  E removeLast();
  void removeWhere(bool test(E element));
  void retainWhere(bool test(E element));
  List<E> operator +(List<E> other);
  List<E> sublist(int start, [int? end]);
  Iterable<E> getRange(int start, int end);
  void setRange(int start, int end, Iterable<E> iterable, [int skipCount = 0]);
  void removeRange(int start, int end);
  void fillRange(int start, int end, [E? fillValue]);
  void replaceRange(int start, int end, Iterable<E> replacements);
  Map<int, E> asMap();
  bool operator ==(Object other);
}
