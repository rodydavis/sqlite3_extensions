import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:sqlite3/sqlite3.dart';
import 'package:shathree/shathree.dart' as shathree;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sqlite3.ensureExtensionLoaded(
    SqliteExtension.inLibrary(shathree.lib, 'sqlite3_shathree_init'),
  );
  final dir = await getApplicationDocumentsDirectory();
  final dbPath = p.join(dir.path, 'app.db');
  final db = sqlite3.open(dbPath);
  runApp(MyApp(db: db));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.db});

  final Database db;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    widget.db.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final version = widget.db //
        .select('SELECT shathree_version() as version;')
        .first['version'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('shathree'),
        ),
        body: Center(
          child: Text(
            'version: $version',
          ),
        ),
      ),
    );
  }
}
