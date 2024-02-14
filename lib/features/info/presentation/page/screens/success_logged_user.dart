import 'package:flutter/material.dart';
import 'package:thestuckhunter/features/info/presentation/page/screens/widgets/user_card_information.dart';

class SuccessLoggedUser extends StatelessWidget {
  const SuccessLoggedUser({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: UserCardInformation(),
    );
  }
}
