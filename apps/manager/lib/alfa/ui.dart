import 'dart:async';
import 'dart:developer';
import 'package:manager/manager.dart';

abstract class UIv2 extends StatefulWidget {
  const UIv2({super.key});
  Widget build(BuildContext context);
  void initPage(BuildContext context) {}
  @override
  _UIv2State createState() => _UIv2State();
}

class _UIv2State extends State<UIv2> {
  _UIv2State() {
    _observer = ReactiveUI();
  }

  ReactiveUI? _observer;
  late StreamSubscription _subscription;
  bool _afterFirstLayout = false;

  @override
  void initState() {
    super.initState();
    widget.initPage(context);
    WidgetsBinding.instance.endOfFrame.then((_) {
      _afterFirstLayout = true;
    });
    _subscription = _observer!.listen(_rebuild);
  }

  @override
  void dispose() {
    _afterFirstLayout = false;
    _subscription.cancel();
    if (_observer?.canUpdate ?? false) {
      _observer?.close();
    }

    super.dispose();
  }

  void _rebuild(_) {
    if (_afterFirstLayout && mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final observer = ReactiveUI.instance;
    ReactiveUI.instance = _observer;
    final result = widget.build(context);
    if (!_observer!.canUpdate) {
      log('🟥 [${super.widget}]');
    } else {
      log('🟩 [${super.widget}]');
    }
    ReactiveUI.instance = observer;
    return result;
  }
}
