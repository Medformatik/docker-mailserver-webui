import 'package:docker_mailserver_webui/config.dart';
import 'package:flutter/material.dart';
import 'package:openapi/api.dart';

void main() {
  runApp(const App());
}

bool isValidEmail(String email) {
  final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
  return emailRegex.hasMatch(email);
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 19, 104, 202)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MailAccountApi mailAccountApi = MailAccountApi(AppConfig.apiClient);
  final AliasesApi aliasApi = AliasesApi(AppConfig.apiClient);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(AppConfig.appName),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  const Text('Email Accounts', style: TextStyle(fontSize: 24)),
                  IconButton(
                    icon: const Icon(Icons.add, color: Colors.green),
                    onPressed: () {
                      final parentSetState = setState;
                      showDialog(
                        context: context,
                        builder: (context) {
                          final emailTextController = TextEditingController();
                          final passwordTextController = TextEditingController();
                          final confirmPasswordTextController = TextEditingController();
                          bool isCreateButtonEnabled = false;

                          // Function to update the state of the Create button
                          void updateButtonState(StateSetter setState) {
                            final isEmailValid = isValidEmail(emailTextController.text);
                            final doPasswordsMatch = passwordTextController.text == confirmPasswordTextController.text;
                            setState(() {
                              isCreateButtonEnabled = isEmailValid && doPasswordsMatch;
                            });
                          }

                          return StatefulBuilder(
                            builder: (context, setState) {
                              // Add listeners to TextControllers to update button state
                              emailTextController.addListener(() => updateButtonState(setState));
                              passwordTextController.addListener(() => updateButtonState(setState));
                              confirmPasswordTextController.addListener(() => updateButtonState(setState));

                              return AlertDialog(
                                title: const Text('Create Account'),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    TextField(
                                      controller: emailTextController,
                                      decoration: const InputDecoration(
                                        labelText: 'Email',
                                      ),
                                      onChanged: (value) => updateButtonState(setState),
                                    ),
                                    TextField(
                                      controller: passwordTextController,
                                      obscureText: true,
                                      enableSuggestions: false,
                                      autocorrect: false,
                                      decoration: const InputDecoration(
                                        labelText: 'Password',
                                      ),
                                      onChanged: (value) => updateButtonState(setState),
                                    ),
                                    TextField(
                                      controller: confirmPasswordTextController,
                                      obscureText: true,
                                      enableSuggestions: false,
                                      autocorrect: false,
                                      decoration: const InputDecoration(
                                        labelText: 'Confirm Password',
                                      ),
                                      onChanged: (value) => updateButtonState(setState),
                                    ),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: isCreateButtonEnabled
                                        ? () async {
                                            await mailAccountApi.addEmail(AddEmailRequest(
                                              email: emailTextController.text,
                                              password: passwordTextController.text,
                                            ));
                                            emailTextController.clear();
                                            passwordTextController.clear();
                                            confirmPasswordTextController.clear();
                                            Navigator.pop(context);
                                            setState(() {});
                                            parentSetState(() {});
                                          }
                                        : null, // Disable button when conditions are not met
                                    child: const Text('Create'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
              FutureBuilder<GetEmail200Response?>(
                future: mailAccountApi.getEmail(),
                builder: (context, snapshot) {
                  if (snapshot.hasData && snapshot.data != null) {
                    final data = snapshot.data!.data;
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        final email = data[index];
                        final addAliasTextController = TextEditingController();
                        return Theme(
                          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            expandedCrossAxisAlignment: CrossAxisAlignment.start,
                            tilePadding: const EdgeInsets.all(0),
                            title: email.email != null ? Text(email.email!) : const Icon(Icons.error, color: Colors.red),
                            trailing: IconButton(
                              icon: const Icon(Icons.delete, color: Colors.red),
                              onPressed: () async {
                                await showDialog<void>(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('Confirm Deletion'),
                                      content: const Text('Are you sure you want to delete this email?'),
                                      actions: <Widget>[
                                        TextButton(
                                          child: const Text('Cancel'),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                        TextButton(
                                          child: const Text('Delete'),
                                          onPressed: () async {
                                            Navigator.of(context).pop();
                                            for (final alias in email.alias) {
                                              await aliasApi.deleteAlias(alias.emailAlias!, email.email!);
                                            }
                                            await mailAccountApi.deleteEmail(email.email!);
                                            setState(() {});
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                            children: <Widget>[
                              const Text('Aliases'),
                              for (final alias in email.alias)
                                ListTile(
                                  title: alias.emailAlias != null ? Text(alias.emailAlias!) : const Icon(Icons.error, color: Colors.red),
                                  trailing: IconButton(
                                    icon: const Icon(Icons.delete, color: Colors.red),
                                    onPressed: () async {
                                      await showDialog<void>(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: const Text('Confirm Deletion'),
                                            content: const Text('Are you sure you want to delete this alias?'),
                                            actions: <Widget>[
                                              TextButton(
                                                child: const Text('Cancel'),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                              TextButton(
                                                child: const Text('Delete'),
                                                onPressed: () async {
                                                  Navigator.of(context).pop();
                                                  await aliasApi.deleteAlias(alias.emailAlias!, email.email!);
                                                  setState(() {});
                                                },
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ListTile(
                                title: Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        controller: addAliasTextController,
                                        decoration: const InputDecoration(
                                          hintText: 'Create alias',
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.add, color: Colors.green),
                                      onPressed: () async {
                                        if (isValidEmail(addAliasTextController.text)) {
                                          await aliasApi.addAlias(AddAliasRequest(
                                            emailAlias: addAliasTextController.text,
                                            emailRecipient: [email.email!],
                                          ));
                                          addAliasTextController.clear();
                                          setState(() {});
                                        } else {
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(
                                              content: const Text('Invalid email address'),
                                              backgroundColor: Colors.red,
                                              behavior: SnackBarBehavior.floating,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              action: SnackBarAction(
                                                label: 'Dismiss',
                                                textColor: Colors.white,
                                                onPressed: () {
                                                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                                },
                                              ),
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
