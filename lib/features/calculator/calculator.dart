import 'package:apps/commons/extensions.dart';
import 'package:apps/features/settings/personalizations/background/widgets/backtainer_view.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class Calculator extends ReactiveStatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Calculator".text,
      ),
      body: BackTainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            for (final eachCalc in calcBloc.cache) eachCalc.text,
            ElevatedButton(
              onPressed: null,
              style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(70)),
              child: calcBloc.str.textScale4,
            ).pad.pad,
            const CalcButtons(),
          ],
        ),
      ),
    );
  }
}

class CalcBloc {
  final cacheRM = RM.inject(() => <String>[]);
  List<String> get cache => cacheRM.state;
  set cache(List<String> value) => cacheRM.state = value;

  String get str => baseRM.state;

  set str(String value) {
    cache = [value, ...cache];
    baseRM.state = value;
  }

  final baseRM = RM.inject<String>(() => '');

  bool get isCleared => str.isEmpty;
  bool get isPlusOperation => str.contains('+');
  bool get isMinusOperation => str.contains('-');
  bool get isAnyOperation => isPlusOperation || isMinusOperation;

  void plus() {
    if (isPlusOperation) {
      return;
    }
    baseRM.state = "$str+";
  }

  void minus() {
    if (isMinusOperation) {
      return;
    }
    baseRM.state = "$str-";
  }

  void one() => baseRM.state = "${str}1";
  void two() => baseRM.state = "${str}2";
  void three() => baseRM.state = "${str}3";
  void four() => baseRM.state = "${str}4";
  void five() => baseRM.state = "${str}5";
  void six() => baseRM.state = "${str}6";
  void seven() => baseRM.state = "${str}7";
  void eight() => baseRM.state = "${str}8";
  void nine() => baseRM.state = "${str}9";
  void zero() => baseRM.state = "${str}0";

  void clear() => baseRM.state = '';
  num calculate(num a, num b, OperationType type) {
    switch (type) {
      case OperationType.plus:
        return a + b;
      case OperationType.minus:
        return a - b;
    }
  }

  equals() {
    try {
      if (str.contains('+')) {
        final x = str.split('+');
        baseRM.state = calculate(num.parse(x[0]), num.parse(x[1]), OperationType.plus).toString();
      } else if (str.contains('-')) {
        final x = str.split('-');
        baseRM.state = calculate(num.parse(x[0]), num.parse(x[1]), OperationType.minus).toString();
      }
    } catch (e) {
      showError(e);
    }
  }

  void backSpace() {
    try {
      baseRM.state = str.substring(0, str.length - 1);
    } catch (e) {
      showError(e);
    }
  }

  void showError(Object? e) => RM.scaffold.showSnackBar(
        SnackBar(
          content: e.text,
          duration: 400.milliseconds,
        ),
      );
}

enum OperationType { plus, minus }

final CalcBloc calcBloc = CalcBloc();

class CalcButtons extends ReactiveStatelessWidget {
  const CalcButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 3, shrinkWrap: true, children: [
      ElevatedButton(
        onPressed: () => calcBloc.clear(),
        child: 'C'.textScale4.pad,
      ).pad,
      ElevatedButton(
        onPressed: () => calcBloc.backSpace(),
        child: '<'.textScale4.pad,
      ).pad,
      ElevatedButton(
        onPressed: !calcBloc.isAnyOperation ? null : () => calcBloc.equals(),
        child: '='.textScale4.pad,
      ).pad,
      ElevatedButton(
        onPressed: () => calcBloc.seven(),
        child: '7'.textScale4.pad,
      ).pad,
      ElevatedButton(
        onPressed: () => calcBloc.eight(),
        child: '8'.textScale4.pad,
      ).pad,
      ElevatedButton(
        onPressed: () => calcBloc.nine(),
        child: '9'.textScale4.pad,
      ).pad,
      ElevatedButton(
        onPressed: () => calcBloc.zero(),
        child: '4'.textScale4.pad,
      ).pad,
      ElevatedButton(
        onPressed: () => calcBloc.five(),
        child: '5'.textScale4.pad,
      ).pad,
      ElevatedButton(
        onPressed: () => calcBloc.six(),
        child: '6'.textScale4.pad,
      ).pad,
      ElevatedButton(
        onPressed: () => calcBloc.one(),
        child: '1'.textScale4.pad,
      ).pad,
      ElevatedButton(
        onPressed: () => calcBloc.two(),
        child: '2'.textScale4.pad,
      ).pad,
      ElevatedButton(
        onPressed: () => calcBloc.three(),
        child: '3'.textScale4.pad,
      ).pad,
      ElevatedButton(
        onPressed: () => calcBloc.zero(),
        child: '0'.textScale4.pad,
      ).pad,
      ElevatedButton(
        onPressed: calcBloc.isAnyOperation ? null : () => calcBloc.plus(),
        child: '+'.textScale4.pad,
      ).pad,
      ElevatedButton(
        onPressed: calcBloc.isAnyOperation ? null : () => calcBloc.minus(),
        child: '-'.textScale4.pad,
      ).pad,
    ]).pad;
  }
}
