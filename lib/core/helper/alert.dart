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
      title: isDeleted
          ? const Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 50,
            )
          : const Icon(
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
          child: Text(isDeleted ? "Ok" : 'Yes, Delete'),
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

class SuccessDialog extends StatelessWidget {
  final VoidCallback onpress;
  final String message;
  const SuccessDialog({
    super.key,
    required this.onpress,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Appointment Completed'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Center(
              child: Icon(
            Icons.check,
            color: Colors.green,
            size: 100,
          )),
          const SizedBox(height: 20),
          Text(message),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: onpress,
          child: const Text('OK'),
        ),
      ],
    );
  }
}

class MyCustomAlertDialog extends StatelessWidget {
  final bool isLoading;
  final bool isCompleted;
  final VoidCallback onPress;
  final VoidCallback okPressed;

  final String questionMesage;
  final String successMessage;

  const MyCustomAlertDialog({
    super.key,
    required this.isLoading,
    required this.isCompleted,
    required this.onPress,
    required this.okPressed,
    required this.questionMesage,
    required this.successMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      elevation: 8,
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isLoading)
              const CircularProgressIndicator()
            else if (isCompleted)
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    successMessage,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: okPressed,
                    child: const Text('OK'),
                  ),
                ],
              )
            else
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    questionMesage,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          
                          onPressed: onPress,
                          child: const Text('Yes, sure'),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Cancel'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
