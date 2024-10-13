import 'dart:io';

import 'run.dart';

Future<void> main(List<String> args) async {
  final ext = Directory('./third_party/sqlite/ext');
  final misc = Directory('${ext.path}/misc')
      .listSync()
      .whereType<File>()
      .where((file) => file.path.endsWith('.c'));
  var out = 'misc';
  // await run('mkdir', [out]);
  for (final item in misc) {
    print(item.path);
    await run(
      'flutter_sqlite3_extension',
      [
        '--source',
        '../${item.path}',
      ],
      workingDirectory: out,
      verbose: true,
    );
  }
}
