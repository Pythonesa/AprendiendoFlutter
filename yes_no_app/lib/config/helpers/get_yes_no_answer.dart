import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');
    final String text;

    if (response.data['answer'] == 'yes') {
      text = '¡Guau guau!';
    } else if (response.data['answer'] == 'no') {
      text = 'Guau...';
    } else {
      text = 'Guau... ¡Guau!';
    }
    
    return Message(
        text: text,
        fromWho: FromWho.hers,
        imageUrl: response.data['image']);
  }
}
