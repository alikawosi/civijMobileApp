import '../database.dart';

class WritingTasksTable extends SupabaseTable<WritingTasksRow> {
  @override
  String get tableName => 'writingTasks';

  @override
  WritingTasksRow createRow(Map<String, dynamic> data) => WritingTasksRow(data);
}

class WritingTasksRow extends SupabaseDataRow {
  WritingTasksRow(super.data);

  @override
  SupabaseTable get table => WritingTasksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get userRef => getField<String>('user_ref')!;
  set userRef(String value) => setField<String>('user_ref', value);

  int get topicsRef => getField<int>('topics_ref')!;
  set topicsRef(int value) => setField<int>('topics_ref', value);

  String get answer => getField<String>('answer')!;
  set answer(String value) => setField<String>('answer', value);

  double? get grade => getField<double>('grade');
  set grade(double? value) => setField<double>('grade', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get reportRef => getField<int>('report_ref');
  set reportRef(int? value) => setField<int>('report_ref', value);
}
