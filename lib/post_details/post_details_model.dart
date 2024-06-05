import '/components/post_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'post_details_widget.dart' show PostDetailsWidget;
import 'package:flutter/material.dart';

class PostDetailsModel extends FlutterFlowModel<PostDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for post component.
  late PostModel postModel;

  @override
  void initState(BuildContext context) {
    postModel = createModel(context, () => PostModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    postModel.dispose();
  }
}
