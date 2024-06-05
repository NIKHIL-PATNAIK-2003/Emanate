import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_username_widget.dart' show SignUpUsernameWidget;
import 'package:flutter/material.dart';

class SignUpUsernameModel extends FlutterFlowModel<SignUpUsernameWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  String? _usernameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Username is required.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    usernameTextControllerValidator = _usernameTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    usernameFocusNode?.dispose();
    usernameTextController?.dispose();
  }
}
