import 'dart:convert';
import 'dart:io';

class VkApiClient {
  Future<Map<String, dynamic>> get(Uri url) async {
    final request = await HttpClient().getUrl(url);
    final response = await request.close();
    print('Status Code: ${response.statusCode}');
    final jsonStrings = await response
        .transform(utf8.decoder)
        .toList(); //Ответ приходит частями. Переводим байты(цифры) в строки и создаем массив строк.
    final jsonString =
        jsonStrings.join(); //Объединяем строки из массива в одну строку
    final json = jsonDecode(jsonString); //превращаем строку в json
    return json;
  }
}
