import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:thestuckhunter/features/info/controller/info_controller.dart';

class UserCardInformation extends HookConsumerWidget {
  const UserCardInformation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localIInfoControllerProvider = ref.watch(infoControllerProvider);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (localIInfoControllerProvider.loggedUserModel != null &&
            localIInfoControllerProvider.loggedUserModel?.avatarUrl != null)
          ClipOval(
            child: Image.network(
              localIInfoControllerProvider.loggedUserModel!.avatarUrl!,
              errorBuilder: (context, error, stackTrace) {
                return const SizedBox(height: 100, child: Text("Image not found"));
              },
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              },
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
        const SizedBox(height: 16),
        if (localIInfoControllerProvider.authUser != null && localIInfoControllerProvider.loggedUserModel != null)
          Center(child: Text(localIInfoControllerProvider.loggedUserModel?.fullName ?? "name not found")),
        if (localIInfoControllerProvider.authUser != null && localIInfoControllerProvider.loggedUserModel != null)
          TextButton(
              onPressed: localIInfoControllerProvider.isLoading
                  ? null
                  : () async {
                      await ref.read(infoControllerProvider.notifier).signOut();
                    },
              child: const Text("Logout")),
      ],
    );
  }
}
