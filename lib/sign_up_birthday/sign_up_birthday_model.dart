import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_birthday_widget.dart' show SignUpBirthdayWidget;
import 'package:flutter/material.dart';

class SignUpBirthdayModel extends FlutterFlowModel<SignUpBirthdayWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
