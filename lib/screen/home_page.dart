import 'package:flutter/material.dart';
import 'package:flutter_app/providers.dart';
import 'package:flutter_app/utils/home_page_initial.dart';
import 'package:flutter_app/utils/home_page_loaded.dart';
import 'package:flutter_app/utils/home_page_loading.dart';
import 'package:flutter_app/widgets/home_page_error.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, watch, child) {
          final state = watch(userNotifierProvider.state);

          return state.when(
                () => HomePageInitial(),
            loading: () => HomePageLoading(),
            loaded: (userInfo) => HomePageLoaded(user: userInfo),
            error: (message) => HomePageError(message: message),
          );
        },
      ),
    );
  }
}