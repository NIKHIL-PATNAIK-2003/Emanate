import '/flutter_flow/flutter_flow_util.dart';
import 'qrcode_widget.dart' show QrcodeWidget;
import 'package:flutter/material.dart';

class QrcodeModel extends FlutterFlowModel<QrcodeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
