import 'dart:wasm';

import 'package:flutter_test/flutter_test.dart';

import 'package:laas_ioc/laas_ioc.dart';


abstract class IMessage{

  void showMessage(String msg);

}

class Message extends IMessage{
  @override
  void showMessage(String msg) {
   print(msg);
  }

}

void main() {

  test('Test if the container can register a dependecy',(){
     IoC().register<IMessage>(new Message());
     IMessage message = IoC().get<IMessage>();
     expect(IoC().get<IMessage>(), message);

  });
  
}
