import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class InvestorSignUPRecord extends FirestoreRecord {
  InvestorSignUPRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Investor_signUP');

  static Stream<InvestorSignUPRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InvestorSignUPRecord.fromSnapshot(s));

  static Future<InvestorSignUPRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InvestorSignUPRecord.fromSnapshot(s));

  static InvestorSignUPRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InvestorSignUPRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InvestorSignUPRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InvestorSignUPRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InvestorSignUPRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InvestorSignUPRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInvestorSignUPRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class InvestorSignUPRecordDocumentEquality
    implements Equality<InvestorSignUPRecord> {
  const InvestorSignUPRecordDocumentEquality();

  @override
  bool equals(InvestorSignUPRecord? e1, InvestorSignUPRecord? e2) {
    return e1?.name == e2?.name;
  }

  @override
  int hash(InvestorSignUPRecord? e) => const ListEquality().hash([e?.name]);

  @override
  bool isValidKey(Object? o) => o is InvestorSignUPRecord;
}
