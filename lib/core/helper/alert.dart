import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/features/login/presentation/pages/login_screen.dart';

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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: context.theme.backround,
      title: Column(
        children: [
          const Icon(
            size: 75,
            Icons.check,
            color: Colors.green,
          ),
          const SizedBox(height: 20),
          Text(
            'Successfully scheduled',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontSize: 20,
                ),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20),
          Text(
            message,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  height: 1.5,
                ),
          ),
        ],
      ),
      actions: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: context.theme.primary,
                maximumSize: const Size(180, 45),
                minimumSize: const Size(180, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              onPressed: onpress,
              child: Text(
                'Confirm',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MyCustomAlertDialog extends StatelessWidget {
  final bool isLoading;
  final bool? isApponment;
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
    this.isApponment,
    required this.okPressed,
    required this.questionMesage,
    required this.successMessage,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: context.theme.backround,
      title: isApponment ?? false
          ? const SizedBox()
          : Column(
              children: [
                const Icon(
                  size: 70,
                  Icons.warning_rounded,
                  color: Colors.red,
                ),
                const SizedBox(height: 20),
                Text(
                  isLoading
                      ? "Deleting..."
                      : isCompleted
                          ? 'Deletion Successful'
                          : 'Confirm Deletion',
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(fontSize: 20, color: Colors.red),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isLoading)
            const SizedBox(
                height: 100,
                width: 100,
                child: Center(
                    child: CircularProgressIndicator(
                  color: Colors.red,
                  backgroundColor: Colors.white,
                )))
          else if (isCompleted)
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  successMessage,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: context.theme.secondary,
                    maximumSize: const Size(180, 45),
                    minimumSize: const Size(180, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  onPressed: okPressed,
                  child: Text(
                    'Confirm',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.black),
                  ),
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
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        height: 1.5,
                      ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: context.theme.secondary,
                          maximumSize: const Size(180, 45),
                          minimumSize: const Size(180, 45),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text(
                          'Cancel',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: context.theme.primary,
                          maximumSize: const Size(180, 45),
                          minimumSize: const Size(180, 45),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        onPressed: onPress,
                        child: Text(
                          'Yes, sure',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }
}
