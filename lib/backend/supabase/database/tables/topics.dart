import '../database.dart';

class TopicsTable extends SupabaseTable<TopicsRow> {
  @override
  String get tableName => 'topics';

  @override
  TopicsRow createRow(Map<String, dynamic> data) => TopicsRow(data);
}

class TopicsRow extends SupabaseDataRow {
  TopicsRow(super.data);

  @override
  SupabaseTable get table => TopicsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get question => getField<String>('question');
  set question(String? value) => setField<String>('question', value);

  int get categoryRef => getField<int>('category_ref')!;
  set categoryRef(int value) => setField<int>('category_ref', value);
}
