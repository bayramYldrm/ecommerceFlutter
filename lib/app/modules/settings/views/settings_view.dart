import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../utils/constants.dart';
import '../../../components/screen_title.dart';
import '../controllers/settings_controller.dart';
import 'widgets/settings_item.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});
  
  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: ListView(
          children: [
            30.verticalSpace,
            const ScreenTitle(
              title: 'Ayarlar',
              dividerEndIndent: 230,
            ),
            20.verticalSpace,
            Text(
              'Hesap',
              style: theme.textTheme.displayMedium?.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeight.normal,
              )
            ),
            20.verticalSpace,
            const SettingsItem(
              title: 'Bayram Yıldırım',
              icon: Constants.userIcon,
              isAccount: true,
            ),
            30.verticalSpace,
            Text(
              'Ayarlar',
              style: theme.textTheme.displayMedium?.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeight.normal,
              )
            ),
            20.verticalSpace,
            const SettingsItem(
              title: 'Karanlık Mod',
              icon: Constants.themeIcon,
              isDark: true,
            ),
            25.verticalSpace,
            const SettingsItem(
              title: 'Dil',
              icon: Constants.languageIcon,
            ),
            25.verticalSpace,
            const SettingsItem(
              title: 'Yardım',
              icon: Constants.helpIcon,
            ),
            25.verticalSpace,
            const SettingsItem(
              title: 'Çıkış Yap',
              icon: Constants.logoutIcon,
            ),
            20.verticalSpace,
          ],
        ),
      ),
    );
  }
}
