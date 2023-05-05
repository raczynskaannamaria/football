import 'package:flutter/cupertino.dart';
import 'package:flutterfire_ui/auth.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileScreen(
      providerConfigs: const [
        EmailProviderConfiguration(),
      ],
      actions: [
        SignedOutAction((context) {
          Navigator.of(context).pop();
        }),
      ],
      avatarSize: 48,
    );
  }
}
