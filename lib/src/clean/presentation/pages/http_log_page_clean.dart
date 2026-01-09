import 'package:flutter/material.dart';

import '../../domain/entities/http_interaction_entity.br.dart';
import '../../domain/repositories/http_log_repository.dart';
import '../extensions/http_interaction_extensions.dart';

/// Clean Architecture HTTP Log Page
/// Demonstrates reactive UI with StreamBuilder
class HttpLogPageClean extends StatelessWidget {
  final HttpLogRepository repository;

  const HttpLogPageClean({
    required this.repository,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HTTP Logs (Clean)'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: repository.clear,
            tooltip: 'Clear HTTP logs',
          ),
        ],
      ),
      body: StreamBuilder<List<HttpInteractionEntity>>(
        stream: repository.watchInteractions(),
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

          final interactions = snapshot.data!;

          if (interactions.isEmpty) {
            return const Center(
              child: Text('No HTTP interactions yet'),
            );
          }

          return ListView.builder(
            reverse: true,
            itemCount: interactions.length,
            itemBuilder: (context, index) {
              final interaction =
                  interactions[interactions.length - 1 - index];
              return _HttpInteractionTile(interaction: interaction);
            },
          );
        },
      ),
    );
  }
}

class _HttpInteractionTile extends StatelessWidget {
  final HttpInteractionEntity interaction;

  const _HttpInteractionTile({required this.interaction});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            decoration: BoxDecoration(
              color: interaction.statusColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              interaction.statusCodeFormatted,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 2),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            decoration: BoxDecoration(
              color: interaction.durationColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              interaction.durationFormatted,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
      title: Text(
        '${interaction.methodFormatted} ${interaction.uriShort}',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        'ID: ${interaction.id}',
        style: Theme.of(context).textTheme.bodySmall,
      ),
      trailing: interaction.error != null
          ? const Icon(Icons.error, color: Colors.red, size: 20)
          : const Icon(Icons.check_circle, color: Colors.green, size: 20),
      onTap: () => _showInteractionDetails(context, interaction),
    );
  }

  void _showInteractionDetails(
    BuildContext context,
    HttpInteractionEntity interaction,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('${interaction.methodFormatted} Request'),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('ID: ${interaction.id}'),
              const SizedBox(height: 8),
              Text('URI: ${interaction.uri?.toString() ?? '-'}'),
              const SizedBox(height: 8),
              Text('Method: ${interaction.methodFormatted}'),
              const SizedBox(height: 8),
              Text('Status: ${interaction.statusCodeFormatted}'),
              const SizedBox(height: 8),
              Text('Duration: ${interaction.durationFormatted}'),
              if (interaction.request != null) ...[
                const SizedBox(height: 16),
                const Text(
                  'Request:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('Headers: ${interaction.request!.headers ?? {}}'),
                Text('Body: ${interaction.request!.body ?? '-'}'),
              ],
              if (interaction.response != null) ...[
                const SizedBox(height: 16),
                const Text(
                  'Response:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('Status: ${interaction.response!.statusCode}'),
                Text('Headers: ${interaction.response!.headers ?? {}}'),
                Text('Body: ${interaction.response!.body ?? '-'}'),
              ],
              if (interaction.error != null) ...[
                const SizedBox(height: 16),
                const Text(
                  'Error:',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                ),
                Text(interaction.error!.error?.toString() ?? '-'),
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
