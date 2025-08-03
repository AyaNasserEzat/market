import 'package:flutter/widgets.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/feature/profile/presentation/views/widgets/contact_icon.dart';

class ContactRowIcons extends StatelessWidget {
  const ContactRowIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row
    (
      spacing: 20,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
  ContactIcon(icon: AppAssetes.phoneIcon),
ContactIcon(icon: AppAssetes.youtubeIcon),
ContactIcon(icon: AppAssetes.instagramIcon),
ContactIcon(icon: AppAssetes.youtubeIcon),

      ],
    );
  }
}