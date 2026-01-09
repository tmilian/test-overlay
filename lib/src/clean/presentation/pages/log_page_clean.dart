import 'package:flutter/material.dart';

import '../../domain/entities/log_event_entity.br.dart';
import '../../domain/repositories/log_repository.dart';
import '../extensions/log_event_extensions.dart';

/// Clean Architecture Log Page
/// Demonstrates reactive UI with StreamBuilder
class LogPageClean extends StatelessWidget {
  final LogRepository repository;

  const LogPageClean({
    required this.repository,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logs (Clean)'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: repository.clear,
            tooltip: 'Clear logs',
          ),
        ],
      ),
      body: StreamBuilder<List<LogEventEntity>>(
        stream: repository.watchLogs(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }

          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final logs = snapshot.data!;

          if (logs.isEmpty) {
            return const Center(
              child: Text('No logs yet'),
            );
          }

          return ListView.builder(
            reverse: true, // Most recent at bottom
            itemCount: logs.length,
            itemBuilder: (context, index) {
              final log = logs[logs.length - 1 - index];
              return _LogTile(log: log);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addTestLog(repository),
        child: const Icon(Icons.add),
        tooltip: 'Add test log',
      ),
    );
  }

  void _addTestLog(LogRepository repository) {
    final levels = [
      LogLevel.trace,
      LogLevel.debug,
      LogLevel.info,
      LogLevel.warning,
      LogLevel.error,
      LogLevel.fatal,
    ];
    final level = levels[DateTime.now().millisecond % levels.length];

    repository.addLog(
      LogEventEntity(
        level: level,
        message: 'Test ${level.name} message at ${DateTime.now()}',
        time: DateTime.now(),
      ),
    );
  }
}

class _LogTile extends StatelessWidget {
  final LogEventEntity log;

  const _LogTile({required this.log});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: Container(
        width: 8,
        height: double.infinity,
        color: log.levelColor,
      ),
      title: Text(
        log.messageFormatted,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        '${log.levelName} • ${log.timeFormatted}',
        style: Theme.of(context).textTheme.bodySmall,
      ),
      trailing: log.hasError
          ? const Icon(Icons.error_outline, size: 16, color: Colors.red)
          : null,
      onTap: () => _showLogDetails(context, log),
    );
  }

  void _showLogDetails(BuildContext context, LogEventEntity log) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(log.levelName),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Time: ${log.timeFormatted}'),
              const SizedBox(height: 8),
              Text('Level: ${log.levelName}'),
              const SizedBox(height: 8),
              Text('Message:'),
              Text(log.messageFormatted),
              if (log.error != null) ...[
                const SizedBox(height: 8),
                Text('Error:'),
                Text(log.error.toString()),
              ],
              if (log.stackTrace != null) ...[
                const SizedBox(height: 8),
                Text('StackTrace:'),
                Text(
                  log.stackTrace.toString(),
                  style: const TextStyle(fontFamily: 'monospace', fontSize: 10),
                ),
              ],
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
