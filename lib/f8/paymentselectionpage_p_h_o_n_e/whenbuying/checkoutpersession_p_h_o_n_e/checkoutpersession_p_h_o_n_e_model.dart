import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'checkoutpersession_p_h_o_n_e_widget.dart'
    show CheckoutpersessionPHONEWidget;
import 'package:flutter/material.dart';

class CheckoutpersessionPHONEModel
    extends FlutterFlowModel<CheckoutpersessionPHONEWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController1;
  String? get choiceChipsValue1 =>
      choiceChipsValueController1?.value?.firstOrNull;
  set choiceChipsValue1(String? val) =>
      choiceChipsValueController1?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController2;
  String? get choiceChipsValue2 =>
      choiceChipsValueController2?.value?.firstOrNull;
  set choiceChipsValue2(String? val) =>
      choiceChipsValueController2?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController3;
  String? get choiceChipsValue3 =>
      choiceChipsValueController3?.value?.firstOrNull;
  set choiceChipsValue3(String? val) =>
      choiceChipsValueController3?.value = val != null ? [val] : [];
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TransactionsRecord? transactionOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
