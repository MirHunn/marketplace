import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pbecomeprovideraspeer5_widget.dart' show Pbecomeprovideraspeer5Widget;
import 'package:flutter/material.dart';

class Pbecomeprovideraspeer5Model
    extends FlutterFlowModel<Pbecomeprovideraspeer5Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController;
  List<String>? get checkboxGroupValues => checkboxGroupValueController?.value;
  set checkboxGroupValues(List<String>? v) =>
      checkboxGroupValueController?.value = v;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
