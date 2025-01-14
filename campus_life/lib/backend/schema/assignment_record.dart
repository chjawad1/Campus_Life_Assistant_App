import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssignmentRecord extends FirestoreRecord {
  AssignmentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _notes = snapshotData['notes'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('assignment');

  static Stream<AssignmentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AssignmentRecord.fromSnapshot(s));

  static Future<AssignmentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AssignmentRecord.fromSnapshot(s));

  static AssignmentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AssignmentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AssignmentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AssignmentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AssignmentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AssignmentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAssignmentRecordData({
  String? title,
  DateTime? time,
  String? notes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'time': time,
      'notes': notes,
    }.withoutNulls,
  );

  return firestoreData;
}

class AssignmentRecordDocumentEquality implements Equality<AssignmentRecord> {
  const AssignmentRecordDocumentEquality();

  @override
  bool equals(AssignmentRecord? e1, AssignmentRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.time == e2?.time &&
        e1?.notes == e2?.notes;
  }

  @override
  int hash(AssignmentRecord? e) =>
      const ListEquality().hash([e?.title, e?.time, e?.notes]);

  @override
  bool isValidKey(Object? o) => o is AssignmentRecord;
}
