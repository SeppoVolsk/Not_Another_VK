import 'package:flutter_test/flutter_test.dart';
import 'package:vk_postman/data/api_clients/vk_api_client.dart';

void main() {
  test('Проверка функции на возвращаемый тип', () {
    final result = VkApiClient().getAuthDialogLink();
    expect(result.runtimeType, String);
  });

  test('Проверка id в JSON от VK', () async {
    final result = await VkApiClient().getPosts('Тестовый запрос');
    expect(result['response']['items'][0]['id'].runtimeType, int);
  });
}
