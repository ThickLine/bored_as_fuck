import 'package:flutter/material.dart';
import 'package:baf/app/app.logger.dart';
import 'package:baf/core/managers/stopable_service.dart';

/// A manager to start/stop [StoppableService]s when the app goes/returns into/from the background
/// Stop and start long running services
class LifeCycleManager extends StatefulWidget {
  final Widget? child;
  const LifeCycleManager({Key? key, this.child}) : super(key: key);

  @override
  _LifeCycleManagerState createState() => _LifeCycleManagerState();
}

class _LifeCycleManagerState extends State<LifeCycleManager>
    with WidgetsBindingObserver {
  final log = getLogger('LifeCycleManager');
  List<StoppableService> servicesToManage = [];

  // Get all services

  @override
  Widget build(BuildContext context) {
    return widget.child!;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    for (var service in servicesToManage) {
      log.i('App life cycle change to $state');
      if (state == AppLifecycleState.resumed) {
        service.start();
      } else {
        service.stop();
      }
    }
  }
}
