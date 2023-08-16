import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kevell_care_dr/configure/assets_manage/icons.dart';
import 'package:kevell_care_dr/pages/initialize/initialize.dart';

import '../../../configure/value/constant.dart';
import '../../../configure/value/secure_storage.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 20,
      contentPadding: const EdgeInsets.only(),
      leading: SvgPicture.asset(AppIcons.logout),
      onTap: () async {
        await deleteFromSS(mailsecureStoreKey);

        await deleteFromSS(secureStoreKey)
            .then((value) => Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => const Initialize(),
                ),
                (route) => false));
      },
      title: Text(
        "Logout",
        style: Theme.of(context)
            .textTheme
            .headlineMedium!
            .copyWith(fontWeight: FontWeight.normal),
      ),
    );
  }
}
