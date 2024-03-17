import '../database.dart';

class ReportsTable extends SupabaseTable<ReportsRow> {
  @override
  String get tableName => 'reports';

  @override
  ReportsRow createRow(Map<String, dynamic> data) => ReportsRow(data);
}

class ReportsRow extends SupabaseDataRow {
  ReportsRow(super.data);

  @override
  SupabaseTable get table => ReportsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get reporterRef => getField<String>('reporter_ref');
  set reporterRef(String? value) => setField<String>('reporter_ref', value);

  bool get isReported => getField<bool>('isReported')!;
  set isReported(bool value) => setField<bool>('isReported', value);

  String? get feeedback => getField<String>('feeedback');
  set feeedback(String? value) => setField<String>('feeedback', value);

  int? get reportFileRef => getField<int>('reportFile_ref');
  set reportFileRef(int? value) => setField<int>('reportFile_ref', value);
}
