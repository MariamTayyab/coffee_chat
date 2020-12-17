import 'package:coffee_chat/widgets/text_composer.dart';
import 'package:flutter/material.dart';

import 'chat_list.dart';
class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List <Map<String , dynamic>> _dummySnapshot = [];

  void _sendMessageCallBack(String text){
    setState((){
      _dummySnapshot.insert(0,{
        'name' : 'Mariam',
        'avatarUrl': '',
        'photoUrl': '',
        'text': text,

      });
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold (
     backgroundColor: Colors.lightBlueAccent,
     appBar: AppBar(
       title: Text('Coffee Chat'),
     ),
     body: Column(
       children:[
         ChatList (snapshots: _dummySnapshot,),
         Divider(height: 1.0,),
         TextComposer(sendCallback: _sendMessageCallBack,),
       ],
     ),
   );
  }
}

