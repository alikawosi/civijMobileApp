import '../database.dart';

class TopicCategoryTable extends SupabaseTable<TopicCategoryRow> {
  @override
  String get tableName => 'topicCategory';

  @override
  TopicCategoryRow createRow(Map<String, dynamic> data) =>
      TopicCategoryRow(data);
}

class TopicCategoryRow extends SupabaseDataRow {
  TopicCategoryRow(super.data);

  @override
  SupabaseTable get table => TopicCategoryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
