import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(super.data);

  @override
  SupabaseTable get table => UsersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String get password => getField<String>('password')!;
  set password(String value) => setField<String>('password', value);

  int? get roleRef => getField<int>('role_ref');
  set roleRef(int? value) => setField<int>('role_ref', value);

  String get firstName => getField<String>('firstName')!;
  set firstName(String value) => setField<String>('firstName', value);

  String get lastName => getField<String>('lastName')!;
  set lastName(String value) => setField<String>('lastName', value);

  DateTime? get dateOfBirth => getField<DateTime>('dateOfBirth');
  set dateOfBirth(DateTime? value) => setField<DateTime>('dateOfBirth', value);
}
