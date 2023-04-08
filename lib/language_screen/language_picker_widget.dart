import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning/l10n/l10n.dart';
import 'package:sizer/sizer.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';

class LanguagePickerWidget extends StatelessWidget {
  const LanguagePickerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LanguageCubit, LanguageStates>(
      listener: (context, state){},
      builder: (context, state){
        final locale= LanguageCubit.get(context).locale;
        return DropdownButtonHideUnderline(
          child: DropdownButton(
            value: locale,
            icon: Icon(Icons.settings),
            items: L10n.all.map(
                  (locale){
                final flag= L10n.getFlag(locale.languageCode);
                return DropdownMenuItem(
                  child: Center(
                    child: Text(
                      flag,
                      style: TextStyle(
                        fontSize: 22.sp,
                      ),
                    ),
                  ),
                  value: locale,
                  onTap: (){
                    LanguageCubit.get(context).setLocale(locale);
                  },
                );
              },
            ).toList(),
            onChanged: (value) {  },
          ),
        );
      },
    );
  }
}
