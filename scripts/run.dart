import 'dart:io';

Future<bool> run(
  String command,
  List<String> args, {
  String? workingDirectory,
  bool verbose = false,
}) async {
  if (verbose) {
    print('running: $command ${args.join(' ')}');
  }
  final result = await Process.run(
    command,
    args,
    workingDirectory: workingDirectory,
  );
  if (verbose) {
    print(result.stdout);
  }
  if (result.exitCode != 0) {
    print(result.stderr);
  }
  return result.exitCode == 0;
}
