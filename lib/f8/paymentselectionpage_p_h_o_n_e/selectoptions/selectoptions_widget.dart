import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'selectoptions_model.dart';
export 'selectoptions_model.dart';

class SelectoptionsWidget extends StatefulWidget {
  const SelectoptionsWidget({super.key});

  @override
  State<SelectoptionsWidget> createState() => _SelectoptionsWidgetState();
}

class _SelectoptionsWidgetState extends State<SelectoptionsWidget> {
  late SelectoptionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectoptionsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      ),
    );
  }
}
