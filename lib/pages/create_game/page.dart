import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:uuid/uuid.dart';

class CreateGamePage extends StatefulWidget {
  @override
  _CreateGamePageState createState() => _CreateGamePageState();
}

class _CreateGamePageState extends State<CreateGamePage> {
  final courtIdController = TextEditingController();
  final startTimeController = TextEditingController();
  final endTimeController = TextEditingController();
  String level = 'BEGINNER';

  final createGameMutation = """
    mutation CreateGame(\$input: NewGame!) {
      createGame(input: \$input) {
        id
      }
    }
  """;

  void showToast(String message) {
    showCupertinoDialog(
      context: context,
      builder: (_) => CupertinoAlertDialog(
        title: Text("Info"),
        content: Text(message),
        actions: [
          CupertinoDialogAction(child: Text("OK"), onPressed: () => Navigator.pop(context))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('Create Game')),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Mutation(
            options: MutationOptions(
              document: gql(createGameMutation),
              onCompleted: (data) {
                final id = data?['createGame']?['id'] ?? 'unknown';
                showToast("Game created: $id");
              },
            ),
            builder: (RunMutation runMutation, QueryResult? result) {
              return Column(
                children: [
                  CupertinoTextField(
                    controller: courtIdController,
                    placeholder: 'Court ID',
                  ),
                  SizedBox(height: 12),
                  CupertinoTextField(
                    controller: startTimeController,
                    placeholder: 'Start Time (e.g., 2025-05-24T10:00:00)',
                  ),
                  SizedBox(height: 12),
                  CupertinoTextField(
                    controller: endTimeController,
                    placeholder: 'End Time (e.g., 2025-05-24T11:00:00)',
                  ),
                  SizedBox(height: 12),
                  CupertinoSegmentedControl<String>(
                    children: {
                      'BEGINNER': Text('Beginner'),
                      'INTERMEDIATE': Text('Intermediate'),
                      'ADVANCED': Text('Advanced'),
                    },
                    groupValue: level,
                    onValueChanged: (String val) => setState(() => level = val),
                  ),
                  SizedBox(height: 24),
                  CupertinoButton.filled(
                    child: Text('Create Game'),
                    onPressed: () {
                      final input = {
                        'id': Uuid().v4(),
                        'courtId': courtIdController.text,
                        'startTime': DateTime.parse(startTimeController.text).toIso8601String(),
                        'endTime': DateTime.parse(endTimeController.text).toIso8601String(),
                        'level': level,
                      };
                      runMutation({'input': input});
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
