import '/flutter_flow/flutter_flow_util.dart';
import 'a4_forgot_password_link_widget.dart' show A4ForgotPasswordLinkWidget;
import 'package:flutter/material.dart';

class A4ForgotPasswordLinkModel
    extends FlutterFlowModel<A4ForgotPasswordLinkWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
