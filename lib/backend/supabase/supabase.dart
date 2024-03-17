import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://fzlauuvvrpgnqswsrjwj.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6bGF1dXZ2cnBnbnFzd3NyandqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA2MjYxNDQsImV4cCI6MjAyNjIwMjE0NH0.TBDM0xWbKSaIC9WnYI0bKV5pLq8wniSDArVPFuOVCiY';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
