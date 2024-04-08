import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/presentation/constants/padding_constants.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_text_styles.dart';
import 'package:pm_df_vistoria/src/presentation/widgets/app_primary_button_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Perfil',
          style: AppTextStyles.normal().copyWith(fontSize: 25),
        ),
        const SizedBox(
          height: 5,
        ),
        const CircleAvatar(
          radius: 48.0,
          backgroundColor: Colors.grey,
          child: Icon(
            Icons.person,
            size: 65.0,
            color: Colors.white,
          ),
        ),
        const Spacer(),
        AppPrimaryButtonWidget(
          onPressed: () {},
          backgroundColorButton: Colors.red,
          contentWidget: Row(children: [
            Text(
              'Sair',
              style: AppTextStyles.normal()
                  .copyWith(fontSize: 18, color: Colors.white),
            ).paddingSymmetric(horizontal: 20),
            const Icon(
              Icons.logout,
              color: Colors.white,
              size: 30,
            ),
          ]),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    ).paddingAll(PaddingConstants.page);
  }
}
