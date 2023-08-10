import 'package:flutter/material.dart';
import 'package:dr_kevell/pages/login_scrren/presentation/login_screen.dart';

class Alert {
  static void showAlert({
    required BuildContext context,
    required String message,
    Color? color,
  }) {
    AlertDialog(
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  LoginScreen.routeName, (route) => false);
            },
            child: const Text("Click hear to login"))
      ],
    );
    showAlert(context: context, message: message);
  }
}

class SuccessDialog extends StatelessWidget {
  final String message;

  const SuccessDialog({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Icon(
        Icons.check_circle,
        color: Colors.green,
        size: 50,
      ),
      content: Text(message),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}

class ErrorDialog extends StatelessWidget {
  final String message;

  const ErrorDialog({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Icon(
        Icons.error,
        color: Colors.red,
        size: 50,
      ),
      content: Text(message),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}

class DeleteConfirmationDialog extends StatelessWidget {
  final String message;
  final VoidCallback onDelete;
  final bool isDeleted;

  const DeleteConfirmationDialog({
    Key? key,
    required this.message,
    required this.onDelete,
    required this.isDeleted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title:  isDeleted?  const Icon(
        Icons.check_circle,
        color: Colors.green,
        size: 50,
      ) :  const Icon(
        Icons.warning,
        color: Colors.orange,
        size: 50,
      ),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            onDelete(); // Trigger the delete function
            Navigator.of(context).pop(); // Close the dialog
          },
          child:   Text( isDeleted? "Ok" :'Yes, Delete'),
        ),
      ],
    );
  }
}

class DeletingProgressDialog extends StatelessWidget {
  const DeletingProgressDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      content: Row(
        children: [
          CircularProgressIndicator(),
          SizedBox(width: 16),
          Text("Deleting..."),
        ],
      ),
    );
  }
}
