// Automatic FlutterFlow imports
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future syncSupabaseDataToSQLite() async {
  // ode to sync supanbase for sqlite

  // Initialize Supabase client
  SupabaseClient client = SupabaseClient('supabaseUrl', 'supabaseKey');

  // Fetch data from Supabase table
  final response = await client.from('tableName').select().execute();

  // Open SQLite database
  Database db = await openDatabase('path/to/database.db');

  // Clear existing data in SQLite table
  await db.delete('tableName');

  // Insert fetched data into SQLite table
  for (var row in response.data) {
    await db.insert('tableName', row);
  }

  // Close SQLite database
  await db.close();

  print('Data synced from Supabase to SQLite');
}
