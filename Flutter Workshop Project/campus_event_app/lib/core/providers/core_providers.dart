import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/notifications/services/fcm_service.dart';
import '../network/api_client.dart';

final apiClientProvider = Provider<ApiClient>((ref) => ApiClient());

final fcmServiceProvider = Provider<FcmNotificationService>((ref) {
  return FcmNotificationService(ref.watch(apiClientProvider));
});