import 'package:flutter_app/application/notifier/user_notifier.dart';
import 'package:flutter_app/utils/user_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userClientProvider = Provider<UserClient>((ref) => UserClient());

final userNotifierProvider = StateNotifierProvider(
      (ref) => UserNotifier(ref.watch(userClientProvider)),
);