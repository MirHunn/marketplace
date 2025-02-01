import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'makedemand_e_x_p_l_o_r_e_widget.dart' show MakedemandEXPLOREWidget;
import 'package:flutter/material.dart';

class MakedemandEXPLOREModel extends FlutterFlowModel<MakedemandEXPLOREWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode1;
  TextEditingController? shortBioTextController1;
  String? Function(BuildContext, String?)? shortBioTextController1Validator;
  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode2;
  TextEditingController? shortBioTextController2;
  String? Function(BuildContext, String?)? shortBioTextController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    shortBioFocusNode1?.dispose();
    shortBioTextController1?.dispose();

    shortBioFocusNode2?.dispose();
    shortBioTextController2?.dispose();
  }
}
