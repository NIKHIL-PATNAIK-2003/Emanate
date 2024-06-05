import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'feed_widget.dart' show FeedWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class FeedModel extends FlutterFlowModel<FeedWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for PostFeed widget.

  PagingController<DocumentSnapshot?, PostsRecord>? postFeedPagingController;
  Query? postFeedPagingQuery;
  List<StreamSubscription?> postFeedStreamSubscriptions = [];

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    for (var s in postFeedStreamSubscriptions) {
      s?.cancel();
    }
    postFeedPagingController?.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, PostsRecord> setPostFeedController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    postFeedPagingController ??= _createPostFeedController(query, parent);
    if (postFeedPagingQuery != query) {
      postFeedPagingQuery = query;
      postFeedPagingController?.refresh();
    }
    return postFeedPagingController!;
  }

  PagingController<DocumentSnapshot?, PostsRecord> _createPostFeedController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, PostsRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryPostsRecordPage(
          queryBuilder: (_) => postFeedPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: postFeedStreamSubscriptions,
          controller: controller,
          pageSize: 5,
          isStream: true,
        ),
      );
  }
}
