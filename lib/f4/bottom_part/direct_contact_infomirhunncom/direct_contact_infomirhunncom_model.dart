import '/flutter_flow/flutter_flow_util.dart';
import 'direct_contact_infomirhunncom_widget.dart'
    show DirectContactInfomirhunncomWidget;
import 'package:flutter/material.dart';

class DirectContactInfomirhunncomModel
    extends FlutterFlowModel<DirectContactInfomirhunncomWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for clientsquestion widget.
  FocusNode? clientsquestionFocusNode1;
  TextEditingController? clientsquestionTextController1;
  String? Function(BuildContext, String?)?
      clientsquestionTextController1Validator;
  // State field(s) for clientsquestion widget.
  FocusNode? clientsquestionFocusNode2;
  TextEditingController? clientsquestionTextController2;
  String? Function(BuildContext, String?)?
      clientsquestionTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    clientsquestionFocusNode1?.dispose();
    clientsquestionTextController1?.dispose();

    clientsquestionFocusNode2?.dispose();
    clientsquestionTextController2?.dispose();
  }
}
