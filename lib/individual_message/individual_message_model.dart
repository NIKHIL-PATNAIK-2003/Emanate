import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'individual_message_widget.dart' show IndividualMessageWidget;
import 'package:flutter/material.dart';

class IndividualMessageModel extends FlutterFlowModel<IndividualMessageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Message widget.
  FocusNode? messageFocusNode;
  TextEditingController? messageTextController;
  String? Function(BuildContext, String?)? messageTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Send widget.
  ChatMessagesRecord? message;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    messageFocusNode?.dispose();
    messageTextController?.dispose();
  }
}
